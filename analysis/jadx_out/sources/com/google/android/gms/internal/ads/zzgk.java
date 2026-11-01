package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bytedance.pangle.ZeusPluginEventCallback;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzgk implements zzgd {

    /* renamed from: a, reason: collision with root package name */
    public zzhf f8405a;

    /* renamed from: b, reason: collision with root package name */
    public zzgd f8406b;

    /* renamed from: c, reason: collision with root package name */
    public zzgs f8407c;

    /* renamed from: d, reason: collision with root package name */
    public zzfv f8408d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f8409e;

    /* renamed from: f, reason: collision with root package name */
    public zzga f8410f;

    /* renamed from: g, reason: collision with root package name */
    public zzgb f8411g;
    public final ArrayList h = new ArrayList();
    public zzhb i;
    public final zzgd j;
    public zzgd k;

    public zzgk(Context context, zzgd zzgdVar) {
        this.f8409e = context.getApplicationContext();
        this.j = zzgdVar;
    }

    public static final void l(zzgd zzgdVar, zzhd zzhdVar) {
        if (zzgdVar != null) {
            zzgdVar.zzf(zzhdVar);
        }
    }

    public final void m(zzgd zzgdVar) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.h;
            if (i >= arrayList.size()) {
                return;
            }
            zzgdVar.zzf((zzhd) arrayList.get(i));
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzn
    public final int zza(byte[] bArr, int i, int i2) throws IOException {
        zzgd zzgdVar = this.f8406b;
        zzgdVar.getClass();
        return zzgdVar.zza(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final long zzb(zzgi zzgiVar) throws IOException {
        zzdb.zzf(this.f8406b == null);
        String scheme = zzgiVar.zza.getScheme();
        Uri uri = zzgiVar.zza;
        int i = zzen.zza;
        String scheme2 = uri.getScheme();
        boolean isEmpty = TextUtils.isEmpty(scheme2);
        Context context = this.f8409e;
        if (isEmpty || "file".equals(scheme2)) {
            String path = zzgiVar.zza.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                if (this.f8407c == null) {
                    zzgs zzgsVar = new zzgs();
                    this.f8407c = zzgsVar;
                    m(zzgsVar);
                }
                this.f8406b = this.f8407c;
            } else {
                if (this.f8408d == null) {
                    zzfv zzfvVar = new zzfv(context);
                    this.f8408d = zzfvVar;
                    m(zzfvVar);
                }
                this.f8406b = this.f8408d;
            }
        } else if ("asset".equals(scheme)) {
            if (this.f8408d == null) {
                zzfv zzfvVar2 = new zzfv(context);
                this.f8408d = zzfvVar2;
                m(zzfvVar2);
            }
            this.f8406b = this.f8408d;
        } else if ("content".equals(scheme)) {
            if (this.f8410f == null) {
                zzga zzgaVar = new zzga(context);
                this.f8410f = zzgaVar;
                m(zzgaVar);
            }
            this.f8406b = this.f8410f;
        } else {
            boolean equals = LiveConfigKey.RTMP.equals(scheme);
            zzgd zzgdVar = this.j;
            if (equals) {
                if (this.k == null) {
                    try {
                        zzgd zzgdVar2 = (zzgd) Class.forName("androidx.media3.datasource.rtmp.RtmpDataSource").getConstructor(null).newInstance(null);
                        this.k = zzgdVar2;
                        m(zzgdVar2);
                    } catch (ClassNotFoundException unused) {
                        zzdt.zzf("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
                    } catch (Exception e2) {
                        throw new RuntimeException("Error instantiating RTMP extension", e2);
                    }
                    if (this.k == null) {
                        this.k = zzgdVar;
                    }
                }
                this.f8406b = this.k;
            } else if ("udp".equals(scheme)) {
                if (this.f8405a == null) {
                    zzhf zzhfVar = new zzhf(ZeusPluginEventCallback.EVENT_START_LOAD);
                    this.f8405a = zzhfVar;
                    m(zzhfVar);
                }
                this.f8406b = this.f8405a;
            } else if ("data".equals(scheme)) {
                if (this.f8411g == null) {
                    zzgb zzgbVar = new zzgb();
                    this.f8411g = zzgbVar;
                    m(zzgbVar);
                }
                this.f8406b = this.f8411g;
            } else if ("rawresource".equals(scheme) || "android.resource".equals(scheme)) {
                if (this.i == null) {
                    zzhb zzhbVar = new zzhb(context);
                    this.i = zzhbVar;
                    m(zzhbVar);
                }
                this.f8406b = this.i;
            } else {
                this.f8406b = zzgdVar;
            }
        }
        return this.f8406b.zzb(zzgiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final Uri zzc() {
        zzgd zzgdVar = this.f8406b;
        if (zzgdVar == null) {
            return null;
        }
        return zzgdVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zzd() throws IOException {
        zzgd zzgdVar = this.f8406b;
        if (zzgdVar != null) {
            try {
                zzgdVar.zzd();
            } finally {
                this.f8406b = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final Map zze() {
        zzgd zzgdVar = this.f8406b;
        return zzgdVar == null ? Collections.EMPTY_MAP : zzgdVar.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzgd
    public final void zzf(zzhd zzhdVar) {
        zzhdVar.getClass();
        this.j.zzf(zzhdVar);
        this.h.add(zzhdVar);
        l(this.f8407c, zzhdVar);
        l(this.f8408d, zzhdVar);
        l(this.f8410f, zzhdVar);
        l(this.k, zzhdVar);
        l(this.f8405a, zzhdVar);
        l(this.f8411g, zzhdVar);
        l(this.i, zzhdVar);
    }
}
