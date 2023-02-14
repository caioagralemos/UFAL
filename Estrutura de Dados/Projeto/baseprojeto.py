import matplotlib.pyplot as plt
import numpy as np

# Define as dimensões da casa em metros
comprimento = 10
largura = 8

# Define o tamanho do hexágono
raio = 6

# Define os vértices do hexágono
vertices = np.array([
    [0, raio],  # vértice 1 (superior)
    [raio*np.sqrt(3)/2, raio/2],  # vértice 2 (superior direito)
    [raio*np.sqrt(3)/2, -raio/2],  # vértice 3 (inferior direito)
    [0, -raio],  # vértice 4 (inferior)
    [-raio*np.sqrt(3)/2, -raio/2],  # vértice 5 (inferior esquerdo)
    [-raio*np.sqrt(3)/2, raio/2],  # vértice 6 (superior esquerdo)
    [0, raio]  # vértice 7 (volta ao vértice 1)
])

# Cria o gráfico
fig, ax = plt.subplots()

# Desenha o hexágono
ax.plot(vertices[:,0], vertices[:,1], 'k-', linewidth=2)

# Desenha as paredes internas
ax.plot([vertices[0,0], vertices[3,0]], [vertices[0,1], vertices[3,1]], 'k--')  # parede esquerda
ax.plot([vertices[1,0], vertices[4,0]], [vertices[1,1], vertices[4,1]], 'k--')  # parede superior direita
ax.plot([vertices[2,0], vertices[5,0]], [vertices[2,1], vertices[5,1]], 'k--')  # parede inferior direita
ax.plot([vertices[3,0], vertices[4,0]], [vertices[3,1], vertices[4,1]], 'k--')  # parede inferior
ax.plot([vertices[4,0], vertices[5,0]], [vertices[4,1], vertices[5,1]], 'k--')  # parede inferior esquerda
ax.plot([vertices[5,0], vertices[0,0]], [vertices[5,1], vertices[0,1]], 'k--')  # parede superior esquerda

# Desenha as portas e janelas
ax.plot([vertices[3,0], vertices[4,0]], [vertices[3,1], vertices[4,1]], 'b-', linewidth=2)  # porta
ax.plot([vertices[5,0], vertices[0,0]], [vertices[5,1], vertices[0,1]], 'b-', linewidth=2)  # janela
ax.plot([0, vertices[2,0]], [0, vertices[2,1]], 'r-', linewidth=2)  # outra janela

# Define os limites do gráfico
ax.set_xlim([-raio-1, raio+1])  # define limite horizontal
ax.set_ylim([-raio-1, raio+1])  # define limite vertical

# Mostra o gráfico
plt.show()
