from tensorflow.keras.layers import Input, Embedding, Concatenate, Dense, Flatten, dot
from tensorflow.keras.models import Model
from tensorflow.keras.optimizers import SGD, Adam
from tensorflow.keras.regularizers import l2

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
        uEmb = Embedding(self.uNum, self.K, embeddings_initializer="he_normal", embeddings_regularizer=l2(1e-6))(u)
        # Movie embedding (the output is (num_samples, 1, K))
        mEmb = Embedding(self.mNum, self.K, embeddings_initializer="he_normal", embeddings_regularizer=l2(1e-6))(m)
        # Flatten both embeddings (the output is (num_samples, K))
        uFlat = Flatten()(uEmb)
        mFlat = Flatten()(mEmb)
        # Concatenate user-movie embeddings into a feature vector (the output is (num_samples, 2K))
        x = Concatenate()([uFlat, mFlat])
        # x = layers.dot(inputs=[uflat, mflat], axis=1)
        x = Dense(150, activation="relu", kernel_initializer="he_normal")(x)
        x = Dense(50, activation="relu", kernel_initializer="he_normal")(x)
        x = Dense(1)(x)

        model = Model(inputs=[u, m], outputs=x)
        self.model = model

        return

    def call(self, x, training=None):
        m = self.model(x, training=training)

        return m


