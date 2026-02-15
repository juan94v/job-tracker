# ReverseApply: La Idea

> Invertir el modelo de aplicación de trabajo: las empresas aplican a los devs, no al revés.

---

## El Problema: El Modelo Actual Está Roto

```
Dev                                    Empresa
 │                                        │
 │  "Llena este formulario de mierda"     │
 │  "Sube tu CV en PDF y también         │
 │   llena todo manualmente"              │
 │  "Haz este código de prueba gratis"    │
 │<───────────────────────────────────────│
 │                                        │
 │  El dev suplica por trabajo            │
 │────────────────────────────────────────>
```

---

## La Propuesta: Invertir el Modelo

```
Dev                                    Empresa
 │                                        │
 │  "¿Quieres contactarme?"               │
 │  "Primero dime:"                       │
 │  - ¿Cultura remota o híbrida?          │
 │  - ¿Rango salarial real?               │
 │  - ¿Stack tecnológico?                 │
 │  - ¿Cuántas rondas de entrevista?      │
 │  - ¿Hay prueba técnica? ¿Pagada?       │
 │────────────────────────────────────────>
 │                                        │
 │  LA EMPRESA aplica al dev              │
 │<───────────────────────────────────────│
```

---

## Por Qué Esto Es Poderoso

| Modelo Tradicional | Modelo Invertido |
|--------------------|------------------|
| Dev ruega | Empresa demuestra valor |
| Salario "competitivo" (oculto) | Salario transparente obligatorio |
| "Gran cultura" (buzzword) | Demuestra la cultura con datos |
| 8 rondas de entrevista | Muestra el proceso upfront |
| Ghosting normalizado | El dev tiene el control |

---

## El Formulario Que Llena LA EMPRESA

```
┌─────────────────────────────────────────────────────────┐
│  Quieres contactar a @juancepeda                        │
│                                                         │
│  Primero, cuéntanos sobre tu empresa:                   │
│                                                         │
│  Rango salarial: [$______] - [$______] *                │
│                                                         │
│  Modalidad: ( ) Remoto ( ) Híbrido ( ) Presencial       │
│                                                         │
│  Stack principal: [____________________]                │
│                                                         │
│  Proceso de entrevista:                                 │
│  ¿Cuántas rondas? [__]                                  │
│  ¿Prueba técnica? ( ) Sí, pagada ( ) Sí, gratis ( ) No  │
│  ¿Duración estimada del proceso? [__] semanas           │
│                                                         │
│  Cultura:                                               │
│  ¿Días de vacaciones? [__]                              │
│  ¿Horario flexible? ( ) Sí ( ) No                       │
│  ¿Async-first? ( ) Sí ( ) No                            │
│                                                         │
│  Link a tu glassdoor/reviews: [____________________]    │
│                                                         │
│  [Enviar solicitud de contacto]                         │
└─────────────────────────────────────────────────────────┘
```

---

## Lo Que El Dev Ve

```
┌─────────────────────────────────────────────────────────┐
│  Nueva solicitud de contacto                            │
│                                                         │
│  🏢 TechCorp Inc.                                       │
│  💰 $95,000 - $120,000                                  │
│  🏠 100% Remoto                                         │
│  ⚙️  Rails, PostgreSQL, React                           │
│  📋 3 rondas, prueba técnica PAGADA                     │
│  ⭐ 4.2/5 en Glassdoor                                  │
│                                                         │
│  [✓ Me interesa]  [✗ No gracias]  [🚫 Bloquear]         │
└─────────────────────────────────────────────────────────┘
```

---

## Competencia Existente

| Plataforma | Qué hace | Limitación |
|------------|----------|------------|
| **Hired.com** | Empresas aplican a devs | Caro, enterprise-only |
| **Turing** | Matching de devs | Te tratan como contractor |
| **Gun.io** | Freelance marketplace | Nicho muy específico |

**Ninguno pone al dev 100% en control con transparencia obligatoria.**

---

## Posibles Nombres

- **ReverseApply**
- **DevFirst**
- **HireMe.dev**
- **FlipTheScript**
- **DevControl**

---

## Concepto del Widget

Un dev agrega una línea de código a su portafolio:

```html
<script src="https://reverseapply.dev/widget.js" data-user="juancepeda"></script>
```

Y aparece un widget embebido:

```
┌─────────────────────────────────────┐
│  🟢 Disponible para oportunidades   │
│                                     │
│  Stack: Rails, React, PostgreSQL    │
│  Modalidad: Solo remoto             │
│  Expectativa: $80k - $120k          │
│                                     │
│  [💬 Contactar para oportunidad]    │
└─────────────────────────────────────┘
```

Cuando el reclutador hace click, tiene que llenar el formulario de transparencia antes de poder contactar al dev.

---

## El Flujo Completo

```
Portafolio del Dev          API                    Dashboard del Dev
       │                      │                            │
       │  Reclutador ve       │                            │
       │  widget y hace click │                            │
       │ ────────────────────>│                            │
       │                      │                            │
       │   Reclutador llena   │   Notificación al dev      │
       │   formulario         │ ──────────────────────────>│
       │                      │                            │
       │                      │      Dev revisa oferta     │
       │                      │      y decide responder    │
       │                      │<───────────────────────────│
```

---

## Por Qué Funciona

1. **El dev ya no pierde tiempo** aplicando a empresas que ghostean
2. **Transparencia obligatoria** - No más "salario competitivo"
3. **El dev filtra** qué tipo de ofertas quiere recibir
4. **Las empresas compiten** por el talento, no al revés
5. **Los datos del proceso** ayudan a otros devs a saber qué esperar

---

## Próximos Pasos

- [ ] Definir MVP mínimo
- [ ] Diseñar modelos de datos
- [ ] Implementar autenticación multi-usuario
- [ ] Crear API para el widget
- [ ] Diseñar dashboard para devs
- [ ] Sistema de notificaciones

---

*Fecha de creación: Diciembre 2024*

