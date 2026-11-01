package com.ss.android.socialbase.appdownloader.s;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import com.ss.android.socialbase.downloader.kk.iw;
import com.ss.android.socialbase.downloader.network.kk;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private static volatile ox f9302d = null;
    private static int dq = 8;
    private dq<Integer, Bitmap> ox;

    public static class dq<K, T> extends LinkedHashMap<K, T> {
        final int dq;

        public dq(int i, int i2) {
            super(i2, 0.75f, true);
            this.dq = i;
        }

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry<K, T> entry) {
            return size() > this.dq;
        }
    }

    private ox() {
        this.ox = null;
        int i = dq;
        this.ox = new dq<>(i, i / 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ByteArrayOutputStream d(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read < 0) {
                byteArrayOutputStream.flush();
                return byteArrayOutputStream;
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    public static int dq(int i, int i2, BitmapFactory.Options options) {
        int i3 = options.outWidth;
        if (i3 > i || options.outHeight > i2) {
            return Math.min(Math.round(i3 / i), Math.round(options.outHeight / i2));
        }
        return 1;
    }

    public static ox dq() {
        if (f9302d == null) {
            synchronized (ox.class) {
                try {
                    if (f9302d == null) {
                        f9302d = new ox();
                    }
                } finally {
                }
            }
        }
        return f9302d;
    }

    public Bitmap dq(int i) {
        return this.ox.get(Integer.valueOf(i));
    }

    public void dq(final int i, final String str) {
        if (TextUtils.isEmpty(str) || dq(i) != null) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.ox.mp().submit(new Runnable() { // from class: com.ss.android.socialbase.appdownloader.s.ox.1
            @Override // java.lang.Runnable
            public void run() {
                ByteArrayOutputStream byteArrayOutputStream;
                ByteArrayInputStream byteArrayInputStream;
                Closeable closeable;
                Throwable th;
                InputStream inputStream;
                ByteArrayInputStream byteArrayInputStream2;
                Exception e2;
                try {
                    try {
                        kk dq2 = com.ss.android.socialbase.downloader.downloader.ox.dq(true, 0, str, null);
                        if (dq2 == null) {
                            iw.dq(null, null, null, null);
                            return;
                        }
                        inputStream = dq2.dq();
                        try {
                            byteArrayOutputStream = ox.d(inputStream);
                            try {
                                byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                            } catch (Exception e3) {
                                byteArrayInputStream2 = null;
                                e2 = e3;
                                byteArrayInputStream = null;
                            } catch (Throwable th2) {
                                closeable = null;
                                th = th2;
                                byteArrayInputStream = null;
                            }
                            try {
                                byteArrayInputStream2 = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                                try {
                                    BitmapFactory.Options options = new BitmapFactory.Options();
                                    options.inJustDecodeBounds = true;
                                    BitmapFactory.decodeStream(byteArrayInputStream, null, options);
                                    int dq3 = com.ss.android.socialbase.appdownloader.ox.dq(com.ss.android.socialbase.downloader.downloader.ox.ob(), 44.0f);
                                    options.inSampleSize = ox.dq(dq3, dq3, options);
                                    options.inJustDecodeBounds = false;
                                    ox.this.ox.put(Integer.valueOf(i), BitmapFactory.decodeStream(byteArrayInputStream2, null, options));
                                    iw.dq(inputStream, byteArrayOutputStream, byteArrayInputStream, byteArrayInputStream2);
                                } catch (Exception e4) {
                                    e2 = e4;
                                    e2.printStackTrace();
                                    iw.dq(inputStream, byteArrayOutputStream, byteArrayInputStream, byteArrayInputStream2);
                                }
                            } catch (Exception e5) {
                                byteArrayInputStream2 = null;
                                e2 = e5;
                            } catch (Throwable th3) {
                                closeable = null;
                                th = th3;
                                iw.dq(inputStream, byteArrayOutputStream, byteArrayInputStream, closeable);
                                throw th;
                            }
                        } catch (Exception e6) {
                            byteArrayInputStream = null;
                            byteArrayInputStream2 = null;
                            e2 = e6;
                            byteArrayOutputStream = null;
                        } catch (Throwable th4) {
                            byteArrayInputStream = null;
                            closeable = null;
                            th = th4;
                            byteArrayOutputStream = null;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                    }
                } catch (Exception e7) {
                    byteArrayOutputStream = null;
                    byteArrayInputStream = null;
                    byteArrayInputStream2 = null;
                    e2 = e7;
                    inputStream = null;
                } catch (Throwable th6) {
                    byteArrayOutputStream = null;
                    byteArrayInputStream = null;
                    closeable = null;
                    th = th6;
                    inputStream = null;
                }
            }
        });
    }
}
