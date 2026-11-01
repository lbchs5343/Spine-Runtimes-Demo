package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.provider.Settings;
import android.util.Pair;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import g.awz;
import g.axt;
import g.epf;
import g.fqp;
import g.gvm;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzop {

    /* renamed from: a, reason: collision with root package name */
    public static final zzfzr f8824a;

    /* renamed from: c, reason: collision with root package name */
    public final SparseArray f8826c = new SparseArray();

    /* renamed from: d, reason: collision with root package name */
    public final int f8827d;
    public static final zzop zza = new zzop(zzfzo.zzo(awz.f11009a));

    /* renamed from: b, reason: collision with root package name */
    public static final zzfzo f8825b = zzfzo.zzq(2, 5, 6);

    static {
        zzfzq zzfzqVar = new zzfzq();
        zzfzqVar.zza(5, 6);
        zzfzqVar.zza(17, 6);
        zzfzqVar.zza(7, 6);
        zzfzqVar.zza(30, 10);
        zzfzqVar.zza(18, 6);
        zzfzqVar.zza(6, 8);
        zzfzqVar.zza(8, 8);
        zzfzqVar.zza(14, 8);
        f8824a = zzfzqVar.zzc();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public zzop(zzfzo zzfzoVar) {
        for (int i = 0; i < zzfzoVar.size(); i++) {
            awz awzVar = (awz) zzfzoVar.get(i);
            this.f8826c.put(awzVar.f11010b, awzVar);
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f8826c.size(); i3++) {
            i2 = Math.max(i2, ((awz) this.f8826c.valueAt(i3)).f11011c);
        }
        this.f8827d = i2;
    }

    public static zzop e(Context context, zzg zzgVar, fqp fqpVar) {
        return f(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")), zzgVar, fqpVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0099, code lost:
    
        if ("Xiaomi".equals(r3) == false) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzop f(Context context, Intent intent, zzg zzgVar, fqp fqpVar) {
        Object systemService = context.getSystemService(MediaFormat.KEY_AUDIO);
        systemService.getClass();
        AudioManager audioManager = (AudioManager) systemService;
        if (fqpVar == null) {
            fqpVar = zzen.zza >= 33 ? axt.b(audioManager, zzgVar) : null;
        }
        int i = zzen.zza;
        if (i >= 33 && (zzen.zzM(context) || zzen.zzI(context))) {
            return axt.a(audioManager, zzgVar);
        }
        if (i >= 23 && epf.a(audioManager, fqpVar)) {
            return zza;
        }
        zzfzs zzfzsVar = new zzfzs();
        zzfzsVar.zzf(2);
        if (i >= 29 && (zzen.zzM(context) || zzen.zzI(context))) {
            zzfzsVar.zzh(gvm.b(zzgVar));
            return new zzop(g(10, zzgcr.zzh(zzfzsVar.zzi())));
        }
        ContentResolver contentResolver = context.getContentResolver();
        boolean z = Settings.Global.getInt(contentResolver, "use_external_surround_sound_flag", 0) == 1;
        if (!z) {
            String str = zzen.zzc;
            if (!"Amazon".equals(str)) {
            }
        }
        if (Settings.Global.getInt(contentResolver, "external_surround_sound_enabled", 0) == 1) {
            zzfzsVar.zzh(f8825b);
        }
        if (intent == null || z || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) != 1) {
            return new zzop(g(10, zzgcr.zzh(zzfzsVar.zzi())));
        }
        int[] intArrayExtra = intent.getIntArrayExtra("android.media.extra.ENCODINGS");
        if (intArrayExtra != null) {
            zzfzsVar.zzh(zzgcr.zzg(intArrayExtra));
        }
        return new zzop(g(intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 10), zzgcr.zzh(zzfzsVar.zzi())));
    }

    public static zzfzo g(int i, int[] iArr) {
        zzfzl zzfzlVar = new zzfzl();
        for (int i2 : iArr) {
            zzfzlVar.zzf(new awz(i2, i));
        }
        return zzfzlVar.zzi();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0019, code lost:
    
        if (r0 != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj) {
        boolean contentEquals;
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzop) {
            zzop zzopVar = (zzop) obj;
            SparseArray sparseArray = zzopVar.f8826c;
            int i = zzen.zza;
            SparseArray sparseArray2 = this.f8826c;
            if (i >= 31) {
                contentEquals = sparseArray2.contentEquals(sparseArray);
            } else {
                int size = sparseArray2.size();
                if (size == sparseArray.size()) {
                    for (int i2 = 0; i2 < size; i2++) {
                        if (!Objects.equals(sparseArray2.valueAt(i2), sparseArray.get(sparseArray2.keyAt(i2)))) {
                            break;
                        }
                    }
                    if (this.f8827d == zzopVar.f8827d) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2 = zzen.zza;
        SparseArray sparseArray = this.f8826c;
        if (i2 >= 31) {
            i = sparseArray.contentHashCode();
        } else {
            int i3 = 17;
            for (int i4 = 0; i4 < sparseArray.size(); i4++) {
                i3 = Objects.hashCode(sparseArray.valueAt(i4)) + ((sparseArray.keyAt(i4) + (i3 * 31)) * 31);
            }
            i = i3;
        }
        return (i * 31) + this.f8827d;
    }

    public final String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.f8827d + ", audioProfiles=" + this.f8826c.toString() + "]";
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x0042, code lost:
    
        if (com.google.android.gms.internal.ads.zzen.zzG(r6, 30) == false) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00f7 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Pair zzb(zzad zzadVar, zzg zzgVar) {
        int zzi;
        String str = zzadVar.zzo;
        str.getClass();
        int zza2 = zzbg.zza(str, zzadVar.zzk);
        Integer valueOf = Integer.valueOf(zza2);
        zzfzr zzfzrVar = f8824a;
        if (!zzfzrVar.containsKey(valueOf)) {
            return null;
        }
        int i = 8;
        SparseArray sparseArray = this.f8826c;
        if (zza2 == 18) {
            if (zzen.zzG(sparseArray, 18)) {
                zza2 = 18;
            } else {
                zza2 = 6;
                if (!zzen.zzG(sparseArray, zza2)) {
                    return null;
                }
                awz awzVar = (awz) sparseArray.get(zza2);
                awzVar.getClass();
                int i2 = awzVar.f11011c;
                zzfzt zzfztVar = awzVar.f11012d;
                int i3 = zzadVar.zzC;
                boolean z = false;
                if (i3 == -1 || zza2 == 18) {
                    int i4 = zzadVar.zzD;
                    if (i4 == -1) {
                        i4 = 48000;
                    }
                    int i5 = awzVar.f11010b;
                    if (zzfztVar == null) {
                        if (zzen.zza >= 29) {
                            i2 = gvm.a(i5, i4, zzgVar);
                        } else {
                            Integer num = (Integer) zzfzrVar.getOrDefault(Integer.valueOf(i5), 0);
                            num.getClass();
                            i2 = num.intValue();
                        }
                    }
                    i3 = i2;
                } else if (!zzadVar.zzo.equals("audio/vnd.dts.uhd;profile=p2") || zzen.zza >= 33) {
                    if (zzfztVar != null) {
                        int zzi2 = zzen.zzi(i3);
                        if (zzi2 != 0) {
                            z = zzfztVar.contains(Integer.valueOf(zzi2));
                        }
                    } else if (i3 <= i2) {
                        z = true;
                    }
                    if (!z) {
                        return null;
                    }
                } else if (i3 > 10) {
                    return null;
                }
                int i6 = zzen.zza;
                if (i6 <= 28) {
                    if (i3 != 7) {
                        if (i3 == 3 || i3 == 4 || i3 == 5) {
                            i = 6;
                        }
                    }
                    if (i6 <= 26 && "fugu".equals(zzen.zzb) && i == 1) {
                        i = 2;
                    }
                    zzi = zzen.zzi(i);
                    if (zzi == 0) {
                        return Pair.create(Integer.valueOf(zza2), Integer.valueOf(zzi));
                    }
                    return null;
                }
                i = i3;
                if (i6 <= 26) {
                    i = 2;
                }
                zzi = zzen.zzi(i);
                if (zzi == 0) {
                }
            }
        }
        if (zza2 == 8) {
            if (zzen.zzG(sparseArray, 8)) {
                zza2 = 8;
            }
            zza2 = 7;
            if (!zzen.zzG(sparseArray, zza2)) {
            }
        }
        if (zza2 == 30) {
        }
        if (!zzen.zzG(sparseArray, zza2)) {
        }
    }
}
