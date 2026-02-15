# Job Tracker - MVP Personal

> Un job tracker que me sirve a MÍ, no a usuarios imaginarios.

---

## Mi Problema Real

| Frustración | Solución |
|-------------|----------|
| No recuerdo cuánto dije que ganaba | Campo visible y fácil de consultar |
| Me da flojera anotarlo en Notion | Mi app debe ser MÁS fácil que Notion |
| No tengo recordatorios de entrevistas | Notificaciones |
| No tengo recordatorios de follow-ups | Notificaciones |

---

## Lo Que Ya Tengo

- ✅ CRUD de aplicaciones
- ✅ CRUD de etapas de entrevista
- ✅ Campos de salario (`salary_range`, `current_salary`)
- ✅ `scheduled_date`, `follow_up_date`
- ✅ UI con daisyUI + Tailwind
- ✅ Tema oscuro/claro

---

## Lo Que Me Falta (MVP)

### 1. Autenticación (Login)
- [ ] Devise o has_secure_password
- [ ] Registro / Login / Logout
- [ ] Proteger todas las rutas
- [ ] Cada usuario ve solo sus aplicaciones

### 2. Salario Prominente
- [ ] Agregar campo "salario que pedí" (`requested_salary`)
- [ ] Mostrar salario en la card del index (sin hacer click)
- [ ] Ver de un vistazo "¿cuánto pedí aquí?"

### 3. Alertas y Recordatorios
- [ ] Sección de "recordatorios de hoy" en el dashboard
- [ ] Alerta visual de follow-up pendiente (X días sin respuesta)
- [ ] Alerta de entrevista próxima (mañana, en 3 horas, etc.)

### 4. Notificaciones (Fase 2)
- [ ] Email de recordatorio de entrevista (1 día antes)
- [ ] Email de follow-up pendiente (después de X días)

---

## Cómo Debería Lucir

### Vista Principal (Index)

```
┌─────────────────────────────────────────────────────────┐
│  🔔 Tienes 2 recordatorios hoy                          │
│  ├─ Entrevista con Google en 3 horas                    │
│  └─ Follow-up pendiente con Meta (hace 5 días)          │
└─────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────┐
│  Mis Aplicaciones                    [+ Nueva rápida]   │
├─────────────────────────────────────────────────────────┤
│                                                         │
│  Google          Senior Dev       💰 $150k - $180k      │
│  [Interviewing]  Próx: Dec 22     "Pedí $160k"          │
│                                                         │
│  Meta            Staff Eng        💰 $180k - $220k      │
│  [Applied]       Hace 5 días      "Pedí $200k"          │
│                                    ⚠️ Follow-up!        │
│                                                         │
│  Startup X       Lead Dev         💰 $120k - $140k      │
│  [Rejected]      Dec 15           "Pedí $130k"          │
│                                                         │
└─────────────────────────────────────────────────────────┘
```

### Elementos Clave

1. **Salario visible sin hacer click** - "¿Cuánto pedí aquí?"
2. **Alertas arriba** - Lo urgente primero
3. **Estado visual claro** - ¿En qué va cada una?
4. **Follow-up warning** - "Han pasado X días sin respuesta"

---

## Prioridad de Features

| # | Feature | Esfuerzo | Valor | Status |
|---|---------|----------|-------|--------|
| 1 | Login con Devise | 2 horas | 🔥🔥🔥 | ⬜ Pendiente |
| 2 | Mostrar salario en card del index | 30 min | 🔥🔥🔥 | ⬜ Pendiente |
| 3 | Campo "salario que pedí" | 30 min | 🔥🔥🔥 | ⬜ Pendiente |
| 4 | Alerta visual follow-up pendiente | 1 hora | 🔥🔥 | ⬜ Pendiente |
| 5 | Sección "recordatorios de hoy" | 2 horas | 🔥🔥 | ⬜ Pendiente |
| 6 | Email notificación entrevista | 3+ horas | 🔥 | ⬜ Pendiente |

---

## Plan de Acción

### Semana 1: Core
- [ ] Implementar login (Devise)
- [ ] Agregar campo `requested_salary`
- [ ] Mostrar salario en las cards

### Semana 2: Alertas
- [ ] Lógica de "días sin respuesta"
- [ ] Sección de recordatorios en dashboard
- [ ] Alertas visuales de follow-up

### Semana 3: Notificaciones
- [ ] Configurar Action Mailer
- [ ] Background job para revisar entrevistas próximas
- [ ] Enviar emails de recordatorio

---

## Reglas Para Mí Mismo

1. **NO agregar features "cool"** - Solo lo que uso
2. **Usar mi propia app** - Si no la uso, no sirve
3. **Un feature a la vez** - Terminar antes de empezar otro
4. **Si no lo necesito hoy, no lo construyo hoy**

---

## Métrica de Éxito

> ¿Dejé de usar Notion para trackear mis aplicaciones?

Si sí → el MVP funciona.
Si no → algo falta o sobra.

---

*Fecha: Diciembre 2024*


