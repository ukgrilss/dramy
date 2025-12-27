"""
Script para configurar role de admin no Supabase
Resolve o problema do botão Admin não aparecer
"""

# Cole seu Service Role Key aqui (pegue em: Supabase Dashboard → Settings → API)
SERVICE_ROLE_KEY = "COLE_SUA_SERVICE_ROLE_KEY_AQUI"

import requests

SUPABASE_URL = "https://qlylsucoanjohwrkkroq.supabase.co"

headers = {
    "apikey": SERVICE_ROLE_KEY,
    "Authorization": f"Bearer {SERVICE_ROLE_KEY}",
    "Content-Type": "application/json"
}

# 1. Buscar o usuário admin
print("🔍 Buscando usuário admin@cinefy.com...")
response = requests.get(
    f"{SUPABASE_URL}/rest/v1/profiles?email=eq.admin@cinefy.com",
    headers=headers
)

if response.status_code == 200:
    profiles = response.json()
    if profiles:
        user_id = profiles[0]['id']
        print(f"✅ Usuário encontrado: {user_id}")
        
        # 2. Atualizar role para admin
        print("🔧 Atualizando role para admin...")
        update_response = requests.patch(
            f"{SUPABASE_URL}/rest/v1/profiles?id=eq.{user_id}",
            headers=headers,
            json={"role": "admin"}
        )
        
        if update_response.status_code in [200, 204]:
            print("✅ Role atualizado com sucesso!")
            
            # 3. Verificar
            verify_response = requests.get(
                f"{SUPABASE_URL}/rest/v1/profiles?id=eq.{user_id}",
                headers=headers
            )
            print(f"📊 Dados atualizados: {verify_response.json()}")
        else:
            print(f"❌ Erro ao atualizar: {update_response.text}")
    else:
        print("❌ Usuário não encontrado")
else:
    print(f"❌ Erro na busca: {response.text}")

print("\n" + "="*50)
print("INSTRUÇÕES:")
print("="*50)
print("1. Cole sua Service Role Key na linha 7 deste script")
print("2. Execute: python fix_admin_role.py")
print("3. Faça logout e login novamente no site")
print("4. O botão Admin deve aparecer!")
