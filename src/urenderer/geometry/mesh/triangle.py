import numpy as np

from .mesh import Mesh


def get_mesh_triangle() -> Mesh:
    '''
    Creates a triangle in mesh representation

    Returns:
        Mesh: triangle mesh
    '''

    ## SEU CÓDIGO AQUI ######################################################
    # Cria os vértices, índices e UVs de um triângulo
    # no plano z=0 e centrado em (0,0)
    # Posições:
    vertices = np.array([
        [-0.5, -0.5,  0.0],  # Inferior Esquerdo
        [ 0.5, -0.5,  0.0],  # Inferior Direito
        [ 0.0,  0.5,  0.0]   # Superior Centro
    ], dtype=np.float32)

    indices = np.array([0, 1, 2], dtype=np.uint32)

    # Coordenadas UV:
    uv = np.array([
        [0.0, 0.0],
        [1.0, 0.0],
        [0.5, 1.0]
    ], dtype=np.float32)


    #########################################################################

    return Mesh(vertices, indices, uv)
