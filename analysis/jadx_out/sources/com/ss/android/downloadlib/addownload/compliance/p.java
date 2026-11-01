package com.ss.android.downloadlib.addownload.compliance;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.downloadlib.mn.mp;
import com.ss.android.downloadlib.mn.ox;
import com.ss.android.socialbase.downloader.network.kk;
import java.io.BufferedInputStream;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class p extends com.ss.android.socialbase.downloader.kk.ia<Long, Bitmap> {
    private final Map<Long, SoftReference<dq>> dq;

    public static class d {
        private static p dq = new p();
    }

    public interface dq {
        void dq(Bitmap bitmap);
    }

    private p() {
        super(8, 8);
        this.dq = new HashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int d(int i, int i2, BitmapFactory.Options options) {
        int i3 = options.outWidth;
        if (i3 > i || options.outHeight > i2) {
            return Math.min(Math.round(i3 / i), Math.round(options.outHeight / i2));
        }
        return 1;
    }

    public static p dq() {
        return d.dq;
    }

    public void dq(final long j, final long j2, final String str) {
        if (get(Long.valueOf(j)) == null) {
            if (TextUtils.isEmpty(str)) {
                mn.dq(12, j2);
                return;
            } else {
                com.ss.android.downloadlib.mn.ox.dq((ox.dq<Object, R>) new ox.dq<Object, Object>() { // from class: com.ss.android.downloadlib.addownload.compliance.p.2
                    @Override // com.ss.android.downloadlib.mn.ox.dq
                    public Object dq(Object obj) {
                        BufferedInputStream bufferedInputStream;
                        Throwable th;
                        kk dq2;
                        try {
                            dq2 = com.ss.android.socialbase.downloader.downloader.ox.dq(true, 0, str, null);
                        } catch (Exception e2) {
                            e = e2;
                            bufferedInputStream = null;
                        } catch (Throwable th2) {
                            bufferedInputStream = null;
                            th = th2;
                            com.ss.android.socialbase.downloader.kk.iw.dq(bufferedInputStream);
                            throw th;
                        }
                        if (dq2 == null) {
                            com.ss.android.socialbase.downloader.kk.iw.dq(null);
                            return null;
                        }
                        bufferedInputStream = new BufferedInputStream(dq2.dq());
                        try {
                            try {
                                bufferedInputStream.mark(bufferedInputStream.available());
                                BitmapFactory.Options options = new BitmapFactory.Options();
                                options.inJustDecodeBounds = true;
                                BitmapFactory.decodeStream(bufferedInputStream, null, options);
                                int i = options.outWidth;
                                int i2 = options.outHeight;
                                int dq3 = mp.dq(no.getContext(), 60.0f);
                                options.inSampleSize = p.d(dq3, dq3, options);
                                options.inJustDecodeBounds = false;
                                bufferedInputStream.reset();
                                Bitmap decodeStream = BitmapFactory.decodeStream(bufferedInputStream, null, options);
                                JSONObject jSONObject = new JSONObject();
                                try {
                                    jSONObject.putOpt("ttdownloader_type", "load_bitmap");
                                    jSONObject.putOpt("bm_original_w", Integer.valueOf(i));
                                    jSONObject.putOpt("bm_original_h", Integer.valueOf(i2));
                                    jSONObject.putOpt("bm_bytes", Integer.valueOf(decodeStream == null ? -1 : decodeStream.getByteCount()));
                                } catch (Exception e3) {
                                    e3.printStackTrace();
                                }
                                com.ss.android.downloadlib.p.dq.dq().dq("ttd_pref_monitor", jSONObject, j2);
                                p.this.put(Long.valueOf(j), decodeStream);
                                com.ss.android.socialbase.downloader.kk.iw.dq(bufferedInputStream);
                            } catch (Exception e4) {
                                e = e4;
                                com.ss.android.downloadlib.s.ox.dq().dq(e, "BitmapCache loadBitmap");
                                com.ss.android.socialbase.downloader.kk.iw.dq(bufferedInputStream);
                                return null;
                            }
                            return null;
                        } catch (Throwable th3) {
                            th = th3;
                            com.ss.android.socialbase.downloader.kk.iw.dq(bufferedInputStream);
                            throw th;
                        }
                    }
                }, (Object) null).dq(new ox.dq<Object, Object>() { // from class: com.ss.android.downloadlib.addownload.compliance.p.1
                    @Override // com.ss.android.downloadlib.mn.ox.dq
                    public Object dq(Object obj) {
                        SoftReference softReference = (SoftReference) p.this.dq.remove(Long.valueOf(j));
                        if (softReference == null || softReference.get() == null) {
                            return null;
                        }
                        ((dq) softReference.get()).dq(p.this.get(Long.valueOf(j)));
                        return null;
                    }
                }).dq();
                return;
            }
        }
        SoftReference<dq> remove = this.dq.remove(Long.valueOf(j));
        if (remove == null || remove.get() == null) {
            return;
        }
        remove.get().dq(get(Long.valueOf(j)));
    }

    public void dq(long j, dq dqVar) {
        if (get(Long.valueOf(j)) != null) {
            dqVar.dq(get(Long.valueOf(j)));
        } else {
            this.dq.put(Long.valueOf(j), new SoftReference<>(dqVar));
        }
    }
}
