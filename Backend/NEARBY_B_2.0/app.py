from fastapi import FastAPI
from routes.Sp_bd_NerabyB import router_SP_NEARBY 
from routes.view import  routerVistaUsersList
from routes.rol import router_Rol
from routes.ubicacion import router_ubicacion
from routes.servicio import router_Servicio
from routes.persona import router_Persona
from routes.usuario import router_Usuario 
from routes.categoria import router_Categoria 
from routes.horario import router_Horario 
from routes.establecimiento import router_establecimiento
from routes.local import router_local  
from routes.servicio import router_Servicio  
from routes.valoracion import router_Valoracion 



from fastapi.openapi.utils import get_openapi

app = FastAPI()
app.include_router(router_SP_NEARBY)
app.include_router(routerVistaUsersList)
app.include_router(router_Rol)
app.include_router(router_ubicacion)
app.include_router(router_Servicio)
app.include_router(router_Persona)
app.include_router(router_Usuario)
app.include_router(router_Categoria)
app.include_router(router_Horario)
app.include_router(router_establecimiento)
app.include_router(router_local)
app.include_router(router_Servicio)
app.include_router(router_Valoracion)


# Incluye las rutas y asigna una etiqueta a cada una
app.include_router(router_SP_NEARBY, tags=["SP_NEARBY_B"])
app.include_router(routerVistaUsersList, tags=["Vistas"])
app.include_router(router_Rol, tags=["Roles"])
app.include_router(router_ubicacion, tags=["Ubicaciones"])
app.include_router(router_Servicio, tags=["Servicios"])
app.include_router(router_Persona, tags=["Personas"])
app.include_router(router_Usuario, tags=["Usuarios"])
app.include_router(router_Categoria, tags=["Categorias"])
app.include_router(router_Horario, tags=["Horarios"])
app.include_router(router_establecimiento, tags=["Establecimientos"])
app.include_router(router_local, tags=["Locales"])
app.include_router(router_Servicio, tags=["Servicios"])
app.include_router(router_Valoracion, tags=["Valoraciones"])

# Función para personalizar la documentación de Swagger
def custom_openapi():
    if app.openapi_schema:
        return app.openapi_schema
    openapi_schema = get_openapi(
        title="Nearby_B",
        version="1.0.0",
        description="Aplicación de bares Locales.",
        routes=app.routes,
    )
    # Agregar cualquier otra información personalizada que desees
    # Por ejemplo, puedes agregar información de contacto, términos de servicio, etc.
    app.openapi_schema = openapi_schema
    return app.openapi_schema

# Asigna la función custom_openapi al atributo "openapi_schema" del FastAPI app
app.openapi = custom_openapi