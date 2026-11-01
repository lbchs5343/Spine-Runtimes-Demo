package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.util.Map;

/* loaded from: classes3.dex */
public class zzaqu extends zzapp {
    public final zzapu t;
    public final Object u;

    public zzaqu(int i, String str, zzapu zzapuVar, zzapt zzaptVar) {
        super(i, str, zzaptVar);
        this.u = new Object();
        this.t = zzapuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzapp
    public final zzapv o(zzapl zzaplVar) {
        String str;
        String str2;
        try {
            byte[] bArr = zzaplVar.zzb;
            Map map = zzaplVar.zzc;
            String str3 = "ISO-8859-1";
            if (map != null && (str2 = (String) map.get("Content-Type")) != null) {
                String[] split = str2.split(";", 0);
                int i = 1;
                while (true) {
                    if (i >= split.length) {
                        break;
                    }
                    String[] split2 = split[i].trim().split("=", 0);
                    if (split2.length == 2 && split2[0].equals("charset")) {
                        str3 = split2[1];
                        break;
                    }
                    i++;
                }
            }
            str = new String(bArr, str3);
        } catch (UnsupportedEncodingException unused) {
            str = new String(zzaplVar.zzb);
        }
        return zzapv.zzb(str, zzaqm.zzb(zzaplVar));
    }

    @Override // com.google.android.gms.internal.ads.zzapp
    /* renamed from: v */
    public void q(String str) {
        zzapu zzapuVar;
        synchronized (this.u) {
            zzapuVar = this.t;
        }
        zzapuVar.zza(str);
    }
}
