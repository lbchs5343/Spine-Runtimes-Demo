package com.google.android.gms.internal.ads;

import g.cfg;
import java.io.ByteArrayInputStream;
import java.nio.charset.Charset;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzbof {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f4900a = Charset.forName("UTF-8");
    public static final zzboc zza = new cfg(19);
    public static final zzboa zzb = new zzboa() { // from class: com.google.android.gms.internal.ads.zzbod
        @Override // com.google.android.gms.internal.ads.zzboa
        public final Object zza(JSONObject jSONObject) {
            Charset charset = zzbof.f4900a;
            return new ByteArrayInputStream(jSONObject.toString().getBytes(zzbof.f4900a));
        }
    };
}
