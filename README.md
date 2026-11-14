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

## AI туслах Amore
Баруун доод буланд байгаа cupid дүрт туслах. Зочдын асуултад зөвхөн Боргилын тухай хариулна.
- Хариултыг `api/chat.js` (Vercel функц) Google Gemini-ийн үнэгүй түвшнээр бичнэ. Боргилын тухай мэдээлэл тэр файлын `SYSTEM` хэсэгт байгаа. Сайтын мэдээлэл өөрчлөгдвөл тэндээ ч засна.
- Vercel → borgil-cv → Settings → Environment Variables: `GEMINI_API_KEY` (заавал), `GEMINI_MODEL` (заавал биш, анхдагч нь `gemini-3.5-flash-lite`).
- Үнэгүй түвшинд зочдын асуултыг Google сургалтад ашигладаг, өдрийн хязгаартай.
- Дүр: `assets/img/amore.png` (бүтэн), `assets/img/amore-face.png` (товчны толгой) — `assets/img/cupid.jpg`-ийн дэвсгэрийг арилгаж гаргасан.
- 90 секунд чатлахгүй бол Amore унтаж (Zzz), дарах эсвэл бичихэд сэрнэ.

## Зочдын тоо
Vercel dashboard → borgil-cv → Analytics хэсэгт Web Analytics-ийг асаахад хэдэн хүн орсныг харуулна.

## CV (PDF)
`cv/cv.html` бол нэг хуудас CV-ийн эх. Засварласны дараа localhost:3000 асаалттай үед PowerShell-д `& "cvuild.ps1"` гэж ажиллуулбал `cv/borgil-cv-mn.pdf`, `cv/borgil-cv-en.pdf` шинэчлэгдэнэ. Сайтын "CV татах" товч сонгосон хэлээр нь PDF татна.

## Зураг нэмэх
Нүүр зураг болон тоглолтын зургаа `assets/img/` хавтаст хуулаад Claude-аас нүүр хэсгийг зурагтай болгохыг хүсээрэй.

## Харах
`index.html`-ийг жижиг локал сервероор (жишээ нь http://localhost:3000) нээнэ. Скриптүүд `type="module"` тул файлыг шууд давхар товшиж нээхэд зарим хэсэг ажиллахгүй.

## Байршуулах
GitHub руу push хийхэд Vercel автоматаар шинэчилнэ.
