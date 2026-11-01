package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.cmo;
import g.dcy;
import g.eno;

/* loaded from: classes3.dex */
public final class zzeom implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzbzz f7317a;

    /* renamed from: b, reason: collision with root package name */
    public final zzeqp f7318b;

    /* renamed from: c, reason: collision with root package name */
    public final zzffo f7319c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f7320d;

    public zzeom(zzeqp zzeqpVar, zzffo zzffoVar, Context context, zzbzz zzbzzVar) {
        this.f7318b = zzeqpVar;
        this.f7319c = zzffoVar;
        this.f7320d = context;
        this.f7317a = zzbzzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 7;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return zzgei.zzm(this.f7318b.zzb(), new zzfwh() { // from class: com.google.android.gms.internal.ads.zzeol
            @Override // com.google.android.gms.internal.ads.zzfwh
            public final Object apply(Object obj) {
                String str;
                boolean z;
                String str2;
                int i;
                float f2;
                int i2;
                int i3;
                DisplayMetrics displayMetrics;
                zzeom zzeomVar = zzeom.this;
                zzffo zzffoVar = zzeomVar.f7319c;
                eno enoVar = zzffoVar.zze;
                eno[] enoVarArr = enoVar.zzg;
                if (enoVarArr == null) {
                    str = enoVar.zza;
                    z = enoVar.zzi;
                } else {
                    String str3 = null;
                    boolean z2 = false;
                    boolean z3 = false;
                    boolean z4 = false;
                    for (eno enoVar2 : enoVarArr) {
                        boolean z5 = enoVar2.zzi;
                        if (!z5 && !z3) {
                            str3 = enoVar2.zza;
                            z3 = true;
                        }
                        if (z5) {
                            if (!z4) {
                                z2 = true;
                            }
                            z4 = true;
                        }
                        if (z3 && z4) {
                            break;
                        }
                    }
                    str = str3;
                    z = z2;
                }
                Resources resources = zzeomVar.f7320d.getResources();
                if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
                    str2 = null;
                    i = 0;
                    f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    i2 = 0;
                } else {
                    zzbzz zzbzzVar = zzeomVar.f7317a;
                    f2 = displayMetrics.density;
                    int i4 = displayMetrics.widthPixels;
                    i2 = displayMetrics.heightPixels;
                    str2 = ((cmo) zzbzzVar.zzi()).bd();
                    i = i4;
                }
                StringBuilder sb = new StringBuilder();
                eno[] enoVarArr2 = enoVar.zzg;
                if (enoVarArr2 != null) {
                    boolean z6 = false;
                    for (eno enoVar3 : enoVarArr2) {
                        if (enoVar3.zzi) {
                            z6 = true;
                        } else {
                            if (sb.length() != 0) {
                                sb.append("|");
                            }
                            int i5 = enoVar3.zze;
                            if (i5 == -1) {
                                i5 = f2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? (int) (enoVar3.zzf / f2) : -1;
                            }
                            sb.append(i5);
                            sb.append("x");
                            int i6 = enoVar3.zzb;
                            if (i6 == -2) {
                                i6 = f2 != TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? (int) (enoVar3.zzc / f2) : -2;
                            }
                            sb.append(i6);
                        }
                    }
                    if (z6) {
                        if (sb.length() != 0) {
                            i3 = 0;
                            sb.insert(0, "|");
                        } else {
                            i3 = 0;
                        }
                        sb.insert(i3, "320x50");
                    }
                }
                return new zzeon(enoVar, str, z, sb.toString(), f2, i, i2, str2, zzffoVar.zzq);
            }
        }, zzcaj.zzf);
    }
}
