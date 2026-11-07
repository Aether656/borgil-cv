# Borgil CV

Миний хувийн CV / танилцуулга вэбсайт. HTML + CSS + JavaScript, Claude-тай хамт vibe coding-оор хийв. Дизайныг Taste Skill (design-taste-frontend)-ийн дүрмээр шинэчилсэн.

## Файлууд
- `index.html` — агуулга болон хуудасны өнгө, фонт (`:root` доторх `--p-*` утгууд)
- `assets/system.css`, `assets/system.js` — Taste Skill-ийн дизайны систем (засахгүй)
- `assets/motion/`, `assets/layout/`, `assets/ui/`, `assets/diagrams/` — хөдөлгөөн, байршил, диаграм
- `assets/icons/` — HTML, CSS, JavaScript, Claude, GitHub-ийн жинхэнэ дүрс

## Хэсгүүд
Highlight бичлэг ба тамирчны үзүүлэлт, тэмцээний амжилт, зуны бэлтгэлийн хуваарь, баг, дасгалжуулагчийн үг, Ирээдүйн би, сургууль, төслүүд, холбоо барих маягт. Дээд цэсний `EN` товч бүх бичвэрийг англи болгоно (текст бүрийн `data-en` утга).

## Холбоо барих маягт
Мессеж Supabase-ийн `contact_messages` хүснэгтэд хадгалагдана. Хүснэгтийг `supabase/contact_messages.sql`-ээр үүсгэнэ. Ирсэн мессежийг Supabase dashboard → Table Editor → contact_messages дээр уншина.

## Зочдын тоо
Vercel dashboard → borgil-cv → Analytics хэсэгт Web Analytics-ийг асаахад хэдэн хүн орсныг харуулна.

## Зураг нэмэх
Нүүр зураг болон тоглолтын зургаа `assets/img/` хавтаст хуулаад Claude-аас нүүр хэсгийг зурагтай болгохыг хүсээрэй.

## Харах
`index.html`-ийг жижиг локал сервероор (жишээ нь http://localhost:3000) нээнэ. Скриптүүд `type="module"` тул файлыг шууд давхар товшиж нээхэд зарим хэсэг ажиллахгүй.

## Байршуулах
GitHub руу push хийхэд Vercel автоматаар шинэчилнэ.
