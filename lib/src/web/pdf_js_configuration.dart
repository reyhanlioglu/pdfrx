/// Configuration for the PDF.js library.
///
/// Set [PdfJsConfiguration.configuration] before using any APIs. It can be typically set in the main function.
class PdfJsConfiguration {
  const PdfJsConfiguration({
    required this.pdfJsSrc,
    required this.workerSrc,
    required this.cMapUrl,
    required this.cMapPacked,
    this.useSystemFonts = true,
    this.standardFontDataUrl,
    this.pdfJsDownloadTimeout = const Duration(seconds: 10),
    this.useLocalJsSrc = false,
  });

  /// `psf.js` file URL such as https://cdnjs.cloudflare.com/ajax/libs/pdf.js/4.4.168/pdf.min.mjs
  final String pdfJsSrc;

  /// `psf.worker.js` file URL such as https://cdnjs.cloudflare.com/ajax/libs/pdf.js/4.4.168/pdf.worker.min.mjs
  final String workerSrc;

  /// `cmaps` directory URL such as https://cdnjs.cloudflare.com/ajax/libs/pdf.js/4.4.168/cmaps/
  final String cMapUrl;

  /// Whether to use the packed cmaps. The default is true.
  final bool cMapPacked;

  /// When true, fonts that aren't embedded in the PDF document will fallback to a system font.
  /// The default is true.
  final bool useSystemFonts;

  /// The URL where the standard font files are located. Include the trailing slash.
  final String? standardFontDataUrl;

  /// The timeout for downloading the PDF.js library. The default is 10 seconds.
  final Duration pdfJsDownloadTimeout;

  /// Whether to use the local `pdf.js` and `pdf.worker.js` files instead of downloading them.
  final bool useLocalJsSrc;

  /// The current configuration. null to use the default.
  ///
  /// To customze the pdf.js download URLs, set this before using any APIs.:
  ///
  /// ```dart
  /// PdfJsConfiguration.configuration = const PdfJsConfiguration(
  ///   pdfJsSrc: 'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/4.4.168/pdf.min.mjs',
  ///   workerSrc: 'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/4.4.168/pdf.worker.min.mjs',
  ///   cMapUrl: 'https://cdnjs.cloudflare.com/ajax/libs/pdf.js/4.4.168/cmaps/',
  /// );
  /// ```
  static PdfJsConfiguration? configuration;
}
