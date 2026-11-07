# CTRALT Token & Club Rewards

Екосистема за клубно възнаграждение и тестова икономика, изградена върху Ethereum (Sepolia Testnet).

## Деплойнати договори и адреси (Sepolia Testnet)
- **CtraltToken (CTRALT):** [`0x1F35dF372D2621e19280A51190564B96Ba62F198`](https://sepolia.etherscan.io/address/0x1F35dF372D2621e19280A51190564B96Ba62F198)[cite: 4]
- **CtraltRewards (Treasury):** [`0x00BFbE6d707B9fb5Dd593434a46CF4664EdeD7Ab`](https://sepolia.etherscan.io/address/0x00BFbE6d707B9fb5Dd593434a46CF4664EdeD7Ab)[cite: 4]
- **Deployer / Owner:** [`0xC5e6379bBe6d72de3E0CDD5FFC2E7a782AEECB81`](https://sepolia.etherscan.io/address/0xC5e6379bBe6d72de3E0CDD5FFC2E7a782AEECB81)[cite: 4]
- **Uniswap v4 Pool Position:** [Позиция #41525 в Uniswap](https://app.uniswap.org/positions/v4/ethereum_sepolia/41525)[cite: 4]

## Структура на проекта
- `contracts/CtraltToken.sol` — ERC-20 токен с фиксирано предлагане от 1,000,000 CTRALT[cite: 4].
- `contracts/CtraltRewards.sol` — Смарт договор (хазна) за разпределяне на награди при изпълнени клубни задачи[cite: 4].
- `docs/WHITEPAPER.md` — Пълна документация на проекта, токеномиката и архитектурата[cite: 4].

## Бърз старт
1. Отворете [Remix IDE](https://remix.ethereum.org/).
2. Компилирайте и деплойнете `CtraltToken.sol`.
3. Деплойнете `CtraltRewards.sol`, като подадете адреса на токена в конструктора.
4. Заредете `CtraltRewards` с токени и използвайте `rewardMember()` за изпращане на награди[cite: 4].
