import threading
import time


def funcion():
    print("Hola Mundo")


def funcion2(n):
    print(f"Hola2Mundo y a {n}")
    time.sleep(1)


if __name__ == '__main__':
    # creo un objeto del modulo thread
    thread = threading.Thread(target=funcion)
    # Si la funcion recibe parametros se los paso con args igual a una tupla
    thread2 = threading.Thread(target=funcion2, args=(1,))
    thread.start()
    thread2.start()
    # Cuando ejecuto el código este se ejecuta sobre el hilo principal. Esto genera que si yo uso time.sleep en algun hilo, el hilo principal lo ignore.

    thread.join()  # le dice al thread principal como ey pai esperese a que yo acabe de ejecutar los hilos para que usted después haga lo que tenga que hacer
