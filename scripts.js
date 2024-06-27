document.addEventListener('DOMContentLoaded', () => {
    fetch('obtener_preguntas.php')
        .then(response => response.json())
        .then(data => {
            if (data.error) {
                console.error('Error del servidor:', data.error);
                document.getElementById('pregunta-container').innerHTML = data.error;
            } else {
                preguntas = data;
                mostrarPregunta();
            }
        })
        .catch(error => {
            console.error('Error al obtener las preguntas:', error);
            document.getElementById('pregunta-container').innerHTML = 'Hubo un error al cargar las preguntas. Por favor, intenta de nuevo más tarde.';
        });
});

function mostrarPregunta() {
    if (indicePreguntaActual >= preguntas.length) {
        finalizarExamen();
        return;
    }

    const preguntaActual = preguntas[indicePreguntaActual];
    const preguntaContainer = document.getElementById('pregunta-container');
    preguntaContainer.innerHTML = `
        <p>${preguntaActual.pregunta}</p>
        <label class="opcion" onclick="seleccionarRespuesta('${preguntaActual.opcion_a}', 'A')">${preguntaActual.opcion_a}</label>
        <label class="opcion" onclick="seleccionarRespuesta('${preguntaActual.opcion_b}', 'B')">${preguntaActual.opcion_b}</label>
        <label class="opcion" onclick="seleccionarRespuesta('${preguntaActual.opcion_c}', 'C')">${preguntaActual.opcion_c}</label>
        <label class="opcion" onclick="seleccionarRespuesta('${preguntaActual.opcion_d}', 'D')">${preguntaActual.opcion_d}</label>
    `;

    document.getElementById('siguiente-pregunta').style.display = 'none';

    tiempoRestante = 15;
    actualizarCronometro();
}

function seleccionarRespuesta(opcion, letra) {
    const preguntaActual = preguntas[indicePreguntaActual];

    const opciones = document.querySelectorAll('.opcion');
    opciones.forEach(opc => opc.onclick = null); // Desactivar clics en las opciones

    if (letra === preguntaActual.respuesta_correcta) {
        puntaje++;
        document.querySelector(`.opcion:nth-child(${letra.charCodeAt(0) - 64})`).classList.add('correcta');
    } else {
        document.querySelector(`.opcion:nth-child(${letra.charCodeAt(0) - 64})`).classList.add('incorrecta');
        document.querySelector(`.opcion:nth-child(${preguntaActual.respuesta_correcta.charCodeAt(0) - 64})`).classList.add('correcta');
    }

    document.getElementById('siguiente-pregunta').style.display = 'block';
}

function siguientePregunta() {
    indicePreguntaActual++;
    mostrarPregunta();
}

function finalizarExamen() {
    const resultado = document.getElementById('resultado');
    resultado.style.display = 'block';

    if (puntaje >= 8) {
        resultado.innerHTML = `¡Felicidades! Conseguistes ${puntaje} puntos.`;
    } else if (puntaje >= 5) {
        resultado.innerHTML = `Buen trabajo. Conseguistes ${puntaje} puntos.`;
    } else if (puntaje >= 1) {
        resultado.innerHTML = `Podrías mejorar. Conseguistes ${puntaje} puntos.`;
    } else {
        resultado.innerHTML = `No conseguiste ningún punto.`;
    }
}