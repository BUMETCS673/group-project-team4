from tensorflow.keras.layers import Input, Embedding, Concatenate, Dense, Flatten
from tensorflow.keras.models import Model
from tensorflow.keras.optimizers import SGD, Adam

class Recommender_Model(Model):
    def __init__(self, K, uNum, mNum):
        super(Recommender_Model, self).__init__()
        self.K = K
        self.uNum = uNum
        self.mNum = mNum

        u = Input(shape=(1,))
        # Create a movie input layer
        m = Input(shape=(1,))
        # User embedding (the output is (num_samples, 1, K))
        uEmb = Embedding(self.uNum, self.K)(u)
        # Movie embedding (the output is (num_samples, 1, K))
        mEmb = Embedding(self.mNum, self.K)(m)
        # Flatten both embeddings (the output is (num_samples, K))
        uFlat = Flatten()(uEmb)
        mFlat = Flatten()(mEmb)
        # Concatenate user-movie embeddings into a feature vector (the output is (num_samples, 2K))
        x = Concatenate()([uFlat, mFlat])
        x = Dense(512, activation="relu")(x)
        x = Dense(1024, activation="relu")(x)
        x = Dense(1)(x)

        model = Model(inputs=[u, m], outputs=x)
        model.compile(optimizer=SGD(lr=1e-2, momentum=3e-1),
                      loss="mse")

        model = Model(inputs=[u, m], outputs=x)
        self.model = model

        return

    def call(self, x, training=None):
        m = self.model(x, training=training)

        return m


