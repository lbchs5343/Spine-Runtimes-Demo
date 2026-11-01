package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.akj;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzamj implements zzanz {

    /* renamed from: a, reason: collision with root package name */
    public final List f4308a;

    public zzamj() {
        this(0);
    }

    public zzamj(int i) {
        this.f4308a = zzfzo.zzn();
    }

    public zzamj(int i, List list) {
        this.f4308a = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v4 */
    public final List b(zzany zzanyVar) {
        String str;
        int i;
        List list;
        zzed zzedVar = new zzed(zzanyVar.zze);
        ArrayList arrayList = this.f4308a;
        while (zzedVar.zzb() > 0) {
            int zzm = zzedVar.zzm();
            int zzd = zzedVar.zzd() + zzedVar.zzm();
            if (zzm == 134) {
                arrayList = new ArrayList();
                int zzm2 = zzedVar.zzm() & 31;
                for (int i2 = 0; i2 < zzm2; i2++) {
                    String zzB = zzedVar.zzB(3, StandardCharsets.UTF_8);
                    int zzm3 = zzedVar.zzm();
                    boolean z = (zzm3 & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0;
                    if (z) {
                        i = zzm3 & 63;
                        str = "application/cea-708";
                    } else {
                        str = "application/cea-608";
                        i = 1;
                    }
                    byte zzm4 = (byte) zzedVar.zzm();
                    zzedVar.zzM(1);
                    if (z) {
                        int i3 = zzm4 & 64;
                        byte[] bArr = zzdd.f5884a;
                        list = Collections.singletonList(i3 != 0 ? new byte[]{1} : new byte[]{0});
                    } else {
                        list = null;
                    }
                    zzab zzabVar = new zzab();
                    zzabVar.zzZ(str);
                    zzabVar.zzP(zzB);
                    zzabVar.zzx(i);
                    zzabVar.zzM(list);
                    arrayList.add(zzabVar.zzaf());
                }
            }
            zzedVar.zzL(zzd);
            arrayList = arrayList;
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzanz
    public final SparseArray zza() {
        return new SparseArray();
    }

    @Override // com.google.android.gms.internal.ads.zzanz
    public final zzaob zzb(int i, zzany zzanyVar) {
        if (i != 2) {
            if (i == 3 || i == 4) {
                return new zzang(new zzamy(zzanyVar.zzb, zzanyVar.zza()));
            }
            if (i == 21) {
                return new zzang(new zzamw());
            }
            if (i == 27) {
                return new zzang(new zzamt(new zzanq(b(zzanyVar)), false, false));
            }
            if (i == 36) {
                return new zzang(new zzamv(new zzanq(b(zzanyVar))));
            }
            if (i == 45) {
                return new zzang(new zzamz());
            }
            if (i == 89) {
                return new zzang(new zzaml(zzanyVar.zzd));
            }
            if (i == 172) {
                return new zzang(new zzamg(zzanyVar.zzb, zzanyVar.zza()));
            }
            if (i == 257) {
                return new zzano(new zzanf("application/vnd.dvb.ait"));
            }
            if (i != 128) {
                if (i != 129) {
                    if (i != 138) {
                        if (i == 139) {
                            return new zzang(new zzamk(zzanyVar.zzb, zzanyVar.zza(), 5408));
                        }
                        switch (i) {
                            case 15:
                                return new zzang(new zzami(false, zzanyVar.zzb, zzanyVar.zza()));
                            case 16:
                                return new zzang(new zzamr(new akj(b(zzanyVar))));
                            case 17:
                                return new zzang(new zzamx(zzanyVar.zzb, zzanyVar.zza()));
                            default:
                                switch (i) {
                                    case 134:
                                        return new zzano(new zzanf("application/x-scte35"));
                                    case 135:
                                        break;
                                    case 136:
                                        break;
                                    default:
                                        return null;
                                }
                        }
                    }
                    return new zzang(new zzamk(zzanyVar.zzb, zzanyVar.zza(), 4096));
                }
                return new zzang(new zzame(zzanyVar.zzb, zzanyVar.zza()));
            }
        }
        return new zzang(new zzamo(new akj(b(zzanyVar))));
    }
}
