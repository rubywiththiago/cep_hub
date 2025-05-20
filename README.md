# CEP Hub 📨

API única que normaliza provedores de CEP.

Stack (sem banco):
* Rails 7 API-only (sem ActiveRecord)
* Redis (cache + Sidekiq)
* Clean Architecture (UseCases / Domain / Infra)


### 7. Teste rápido

```bash
docker compose up --build -d
curl http://localhost:3000/health   # => {"ok":true}

