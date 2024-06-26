import i18n from 'i18next';
import LanguageDetector from 'i18next-browser-languagedetector';
import HttpBackend, { HttpBackendOptions } from 'i18next-http-backend';
import { initReactI18next } from 'react-i18next';

i18n
  .use(HttpBackend)
  .use(LanguageDetector)
  .use(initReactI18next)
  .init<HttpBackendOptions>({
    backend: {
      loadPath: '/manga-hub/locales/{{lng}}/{{ns}}.json',
    },
    fallbackLng: ['en', 'ua'],
    ns: ['home'],
    debug: true,
  });

export default i18n;
