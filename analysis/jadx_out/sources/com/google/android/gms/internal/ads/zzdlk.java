package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Looper;
import android.os.SystemClock;
import g.agd;
import g.awf;
import g.bvv;
import g.bzz;
import g.cvb;
import g.czz;
import g.dcy;
import g.edt;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class zzdlk {

    /* renamed from: a, reason: collision with root package name */
    public final bvv f6175a;

    /* renamed from: b, reason: collision with root package name */
    public final cvb f6176b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f6177c;

    public zzdlk(bvv bvvVar, cvb cvbVar, Executor executor) {
        this.f6175a = bvvVar;
        this.f6176b = cvbVar;
        this.f6177c = executor;
    }

    public final Bitmap d(byte[] bArr, BitmapFactory.Options options) {
        czz czzVar = (czz) this.f6176b;
        czzVar.getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        czzVar.getClass();
        long elapsedRealtime2 = SystemClock.elapsedRealtime();
        if (decodeByteArray != null) {
            long j = elapsedRealtime2 - elapsedRealtime;
            int width = decodeByteArray.getWidth();
            int height = decodeByteArray.getHeight();
            int allocationByteCount = decodeByteArray.getAllocationByteCount();
            boolean z = Looper.getMainLooper().getThread() == Thread.currentThread();
            StringBuilder z2 = awf.z(width, height, "Decoded image w: ", " h:", " bytes: ");
            z2.append(allocationByteCount);
            z2.append(" time: ");
            z2.append(j);
            z2.append(" on ui thread: ");
            z2.append(z);
            agd.e(z2.toString());
        }
        return decodeByteArray;
    }

    public final dcy zzb(String str, final double d2, final boolean z) {
        this.f6175a.getClass();
        zzcao zzcaoVar = new zzcao();
        bvv.f12289a.zza(new bzz(str, zzcaoVar));
        return zzgei.zzm(zzcaoVar, new zzfwh() { // from class: com.google.android.gms.internal.ads.zzdlj
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                zzdlk zzdlkVar = zzdlk.this;
                double d3 = d2;
                boolean z2 = z;
                zzdlkVar.getClass();
                byte[] bArr = ((zzapl) obj).zzb;
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inDensity = (int) (d3 * 160.0d);
                if (!z2) {
                    options.inPreferredConfig = Bitmap.Config.RGB_565;
                }
                zzbce zzbceVar = zzbcn.zzfZ;
                edt edtVar = edt.f15376a;
                if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                    options.inJustDecodeBounds = true;
                    zzdlkVar.d(bArr, options);
                    options.inJustDecodeBounds = false;
                    int i = options.outWidth * options.outHeight;
                    if (i > 0) {
                        options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros((i - 1) / ((Integer) edtVar.f15379d.zza(zzbcn.zzga)).intValue())) / 2);
                    }
                }
                return zzdlkVar.d(bArr, options);
            }
        }, this.f6177c);
    }
}
