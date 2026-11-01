package com.google.android.gms.internal.ads;

import android.net.Network;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

/* loaded from: classes3.dex */
public final class zzfsy extends zzfsm {

    /* renamed from: a, reason: collision with root package name */
    public zzfsx f8188a;

    /* renamed from: b, reason: collision with root package name */
    public HttpURLConnection f8189b;

    /* renamed from: c, reason: collision with root package name */
    public zzfxg f8190c;

    /* renamed from: d, reason: collision with root package name */
    public zzfxg f8191d;

    public zzfsy(zzfxg zzfxgVar, zzfxg zzfxgVar2, zzfsx zzfsxVar) {
        this.f8190c = zzfxgVar;
        this.f8191d = zzfxgVar2;
        this.f8188a = zzfsxVar;
    }

    public static void zzs(HttpURLConnection httpURLConnection) {
        zzfsn.zza();
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        zzs(this.f8189b);
    }

    public HttpURLConnection zzm() throws IOException {
        zzfsn.zzb(((Integer) this.f8190c.zza()).intValue(), ((Integer) this.f8191d.zza()).intValue());
        zzfsx zzfsxVar = this.f8188a;
        zzfsxVar.getClass();
        HttpURLConnection httpURLConnection = (HttpURLConnection) zzfsxVar.zza();
        this.f8189b = httpURLConnection;
        return httpURLConnection;
    }

    public HttpURLConnection zzn(zzfsx zzfsxVar, final int i, final int i2) throws IOException {
        this.f8190c = new zzfxg() { // from class: com.google.android.gms.internal.ads.zzfsq
            @Override // com.google.android.gms.internal.ads.zzfxg
            public final Object zza() {
                return Integer.valueOf(i);
            }
        };
        this.f8191d = new zzfxg() { // from class: com.google.android.gms.internal.ads.zzfsr
            @Override // com.google.android.gms.internal.ads.zzfxg
            public final Object zza() {
                return Integer.valueOf(i2);
            }
        };
        this.f8188a = zzfsxVar;
        return zzm();
    }

    public HttpURLConnection zzo(final Network network, final URL url, final int i, final int i2) throws IOException {
        this.f8190c = new zzfxg() { // from class: com.google.android.gms.internal.ads.zzfss
            @Override // com.google.android.gms.internal.ads.zzfxg
            public final Object zza() {
                return Integer.valueOf(i);
            }
        };
        this.f8191d = new zzfxg() { // from class: com.google.android.gms.internal.ads.zzfst
            @Override // com.google.android.gms.internal.ads.zzfxg
            public final Object zza() {
                return Integer.valueOf(i2);
            }
        };
        this.f8188a = new zzfsx() { // from class: com.google.android.gms.internal.ads.zzfsu
            @Override // com.google.android.gms.internal.ads.zzfsx
            public final URLConnection zza() {
                return network.openConnection(url);
            }
        };
        return zzm();
    }

    public URLConnection zzr(final URL url, final int i) throws IOException {
        this.f8190c = new zzfxg() { // from class: com.google.android.gms.internal.ads.zzfsv
            @Override // com.google.android.gms.internal.ads.zzfxg
            public final Object zza() {
                return Integer.valueOf(i);
            }
        };
        this.f8188a = new zzfsx() { // from class: com.google.android.gms.internal.ads.zzfsw
            @Override // com.google.android.gms.internal.ads.zzfsx
            public final URLConnection zza() {
                return url.openConnection();
            }
        };
        return zzm();
    }
}
