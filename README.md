# Digital Edition of a Medici Letter using TEI XML

This repository contains a digital scholarly edition of a 15th-century letter from **Lorenzo de' Medici** to his ambassador in Naples, **Giovanni de' Lanfredini**. The project involves the diplomatic transcription, semantic encoding using the **TEI (Text Encoding Initiative)** standard, and web-based presentation of the manuscript.

This project was developed for the "Codifica di Testi" (Text Encoding) course, part of the Digital Humanities curriculum at the **University of Pisa (UniPi)**.

---

## 📝 Table of Contents

- [Project Goal: From Manuscript to Digital Edition](#-project-goal-from-manuscript-to-digital-edition)
- [The Manuscript: A Glimpse into Medici Diplomacy](#-the-manuscript-a-glimpse-into-medici-diplomacy)
- [The TEI Encoding Model](#-the-tei-encoding-model)
- [Technical Stack & Digital Philology Workflow](#-technical-stack--digital-philology-workflow)
- [Repository Structure](#-repository-structure)
- [How to View the Digital Edition](#-how-to-view-the-digital-edition)
- [Author](#-author)

---

## 🎯 Project Goal: From Manuscript to Digital Edition

The primary objective of this project is to apply the methodologies of digital philology to a historical document. We aim to create a rich, machine-readable digital edition that is both a faithful representation of the original manuscript and a flexible resource for scholarly research.

The key goals are:
-   **Diplomatic Transcription**: To accurately transcribe the text of the letter, preserving original spellings, abbreviations, and other paleographic features.
-   **Semantic Encoding**: To enrich the plain text with a layer of semantic information using TEI XML, identifying entities like people, places, dates, and philological phenomena.
-   **Validation and Consistency**: To ensure the formal correctness of the encoding against the official TEI schema.
-   **Web Presentation**: To transform the encoded XML into a human-readable HTML format for consultation and study, linking the transcription to the original manuscript facsimiles.

---

## 📜 The Manuscript: A Glimpse into Medici Diplomacy

-   **Document**: Letter (minuta) from Lorenzo de' Medici.
-   **Recipient**: Giovanni de' Lanfredini, Florentine ambassador at the Aragonese court in Naples.
-   **Date**: 29 December 1485.
-   **Archive**: Archivio di Stato di Firenze.
-   **Significance**: The letter is a valuable primary source offering insights into the complex political and diplomatic relations between Florence and the Kingdom of Naples during a period of high tension, marked by the Congiura dei Baroni (Conspiracy of the Barons).

The project includes high-resolution scans of the four pages of the manuscript, which serve as the basis for the transcription and encoding.

---

## 🖋️ The TEI Encoding Model

The core of the project is the `LL1_7.xml` file, which contains the TEI-compliant transcription. We adopted a detailed encoding model to capture various textual phenomena:

-   **Header (`<teiHeader>`)**: Contains extensive metadata about the document, including its origin, authorship, a physical description of the manuscript, and details about the encoding process itself.
-   **Facsimiles (`<facsimile>`)**: Links the digital text to the manuscript scans, defining "zones" on each image that correspond to specific lines of text.
-   **Textual Body (`<text>`)**:
    -   **Structural Elements**: The letter is structured using `<opener>`, `<body>`, and `<closer>`. Paragraphs are marked with `<p>` and line breaks with `<lb/>`.
    -   **Named Entities**: People (`<persName>`), places (`<placeName>`), and dates (`<date>`) are tagged to enable structured data extraction.
    -   **Paleographic and Editorial Features**:
        -   **Abbreviations**: Marked with `<abbr>` (the abbreviated form) and `<expan>` (the expanded, interpreted form).
        -   **Deletions and Additions**: Text struck by the author is tagged with `<del>`, while interlinear or marginal additions are marked with `<add>`.
        -   **Unclear Text**: Passages that are difficult to read are marked with `<unclear>`.

---

## 💻 Technical Stack & Digital Philology Workflow

This project utilizes standard technologies from the Digital Humanities for creating scholarly editions.

-   **Encoding Language**: **XML (eXtensible Markup Language)**.
-   **Encoding Standard**: **TEI P5 (Text Encoding Initiative)**. This is the de-facto standard for representing historical and literary texts in a digital format.
-   **Schema and Validation**: **DTD (Document Type Definition)**. The `tei_all.dtd` file is used to validate the XML against the TEI guidelines, ensuring its structural correctness.
-   **Transformation Language**: **XSLT (eXtensible Stylesheet Language Transformations)**. The `LL1_7.xsl` stylesheet contains the rules to transform the semantic XML into a presentational HTML file.
-   **Presentation**: **HTML5** and **CSS3**. The final output is a web page styled with CSS for readability.

### Workflow:

**Manuscript Scans** → **Diplomatic Transcription** → **TEI XML Encoding** (`.xml`) → **XSLT Transformation** (`.xsl`) → **Web Publication** (`.html` + `.css`)

---

## 📂 Repository Structure

```

.
├── Progetto/
│   ├── LL1\_7.xml          \# The main TEI-encoded XML file
│   ├── LL1\_7.xsl          \# The XSLT stylesheet for HTML transformation
│   ├── LL1\_7.html         \# The final, generated HTML output
│   ├── style.css          \# CSS file for styling the HTML output
│   ├── tei\_all.dtd        \# The TEI DTD for validation
│   ├── trascrizione.pdf   \# A PDF document with transcription criteria
│   └── Scans/             \# Directory containing the manuscript images
│       ├── LL1.7\_0001.jpg
│       └── ...
└── Esercizi/              \# Directory with preliminary exercises on XML/DTD

```

---

## 🚀 How to View the Digital Edition

There are two ways to view the project:

1.  **View the Final HTML (Easiest Method)**:
    -   Simply open the `Progetto/LL1_7.html` file in any modern web browser. This is the pre-generated final version of the digital edition.

2.  **Perform the XML to HTML Transformation (Advanced)**:
    -   To see the transformation process in action, you need an XML editor or a transformation tool (like Saxon or the built-in tools in oXygen XML Editor).
    -   Open the `Progetto/LL1_7.xml` file.
    -   Apply the `Progetto/LL1_7.xsl` stylesheet to it.
    -   This will generate a new HTML file, equivalent to the one already present in the repository.

---

## ✍️ Author

- **Daniele Borghesi**
