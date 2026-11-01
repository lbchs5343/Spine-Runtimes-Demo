package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import g.dzh;
import g.kb;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.regex.Matcher;

/* loaded from: classes3.dex */
public final class zzalz implements zzaki {

    /* renamed from: a, reason: collision with root package name */
    public final zzed f4272a = new zzed();

    /* renamed from: b, reason: collision with root package name */
    public final kb f4273b = new kb();

    /* JADX WARN: Code restructure failed: missing block: B:201:0x03a7, code lost:
    
        r0.addAll(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x0131, code lost:
    
        if (")".equals(g.kb.e(r8, r7)) == false) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0377  */
    @Override // com.google.android.gms.internal.ads.zzaki
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(byte[] bArr, int i, int i2, zzakh zzakhVar, zzdg zzdgVar) {
        int i3;
        String str;
        String sb;
        char c2;
        int i4;
        zzalz zzalzVar = this;
        zzed zzedVar = zzalzVar.f4272a;
        zzedVar.zzJ(bArr, i + i2);
        zzedVar.zzL(i);
        ArrayList arrayList = new ArrayList();
        try {
            int zzd = zzedVar.zzd();
            Charset charset = StandardCharsets.UTF_8;
            String zzz = zzedVar.zzz(charset);
            if (zzz == null || !zzz.startsWith("WEBVTT")) {
                zzedVar.zzL(zzd);
                throw zzbh.zza("Expected WEBVTT. Got ".concat(String.valueOf(zzedVar.zzz(charset))), null);
            }
            while (!TextUtils.isEmpty(zzedVar.zzz(StandardCharsets.UTF_8))) {
                zzalzVar = this;
            }
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                int i5 = -1;
                int i6 = 0;
                char c3 = 65535;
                int i7 = 0;
                while (true) {
                    i3 = 1;
                    if (c3 != 65535) {
                        break;
                    }
                    i7 = zzedVar.zzd();
                    String zzz2 = zzedVar.zzz(StandardCharsets.UTF_8);
                    c3 = zzz2 == null ? (char) 0 : "STYLE".equals(zzz2) ? (char) 2 : zzz2.startsWith("NOTE") ? (char) 1 : (char) 3;
                }
                zzedVar.zzL(i7);
                if (c3 == 0) {
                    zzakc.zza(new dzh(arrayList2), zzakhVar, zzdgVar);
                    return;
                }
                if (c3 == 1) {
                    while (!TextUtils.isEmpty(zzedVar.zzz(StandardCharsets.UTF_8))) {
                    }
                } else {
                    if (c3 == 2) {
                        if (!arrayList2.isEmpty()) {
                            throw new IllegalArgumentException("A style block was found after the first cue.");
                        }
                        zzedVar.zzz(StandardCharsets.UTF_8);
                        kb kbVar = zzalzVar.f4273b;
                        zzed zzedVar2 = kbVar.f19530c;
                        StringBuilder sb2 = kbVar.f19531d;
                        sb2.setLength(0);
                        int zzd2 = zzedVar.zzd();
                        while (!TextUtils.isEmpty(zzedVar.zzz(StandardCharsets.UTF_8))) {
                        }
                        zzedVar2.zzJ(zzedVar.zzN(), zzedVar.zzd());
                        zzedVar2.zzL(zzd2);
                        ArrayList arrayList3 = new ArrayList();
                        while (true) {
                            kb.f(zzedVar2);
                            if (zzedVar2.zzb() >= 5 && "::cue".equals(zzedVar2.zzB(5, StandardCharsets.UTF_8))) {
                                int zzd3 = zzedVar2.zzd();
                                String e2 = kb.e(zzedVar2, sb2);
                                if (e2 != null) {
                                    if ("{".equals(e2)) {
                                        zzedVar2.zzL(zzd3);
                                        str = "";
                                    } else if ("(".equals(e2)) {
                                        int zzd4 = zzedVar2.zzd();
                                        int zze = zzedVar2.zze();
                                        boolean z = false;
                                        while (zzd4 < zze && !z) {
                                            int i8 = zzd4 + 1;
                                            z = ((char) zzedVar2.zzN()[zzd4]) == ')';
                                            zzd4 = i8;
                                        }
                                        str = zzedVar2.zzB((zzd4 - 1) - zzedVar2.zzd(), StandardCharsets.UTF_8).trim();
                                    } else {
                                        str = null;
                                    }
                                    if (str == null || !"{".equals(kb.e(zzedVar2, sb2))) {
                                        break;
                                    }
                                    zzalq zzalqVar = new zzalq();
                                    if (!"".equals(str)) {
                                        int indexOf = str.indexOf(91);
                                        if (indexOf != i5) {
                                            Matcher matcher = kb.f19529b.matcher(str.substring(indexOf));
                                            if (matcher.matches()) {
                                                String group = matcher.group(i3);
                                                group.getClass();
                                                zzalqVar.zzv(group);
                                            }
                                            str = str.substring(i6, indexOf);
                                        }
                                        int i9 = zzen.zza;
                                        String[] split = str.split("\\.", i5);
                                        String str2 = split[i6];
                                        int indexOf2 = str2.indexOf(35);
                                        if (indexOf2 != i5) {
                                            zzalqVar.zzu(str2.substring(i6, indexOf2));
                                            zzalqVar.zzt(str2.substring(indexOf2 + 1));
                                        } else {
                                            zzalqVar.zzu(str2);
                                        }
                                        int length = split.length;
                                        if (length > i3) {
                                            zzalqVar.zzs((String[]) Arrays.copyOfRange(split, i3, length));
                                        }
                                    }
                                    boolean z2 = false;
                                    String str3 = null;
                                    while (!z2) {
                                        int zzd5 = zzedVar2.zzd();
                                        str3 = kb.e(zzedVar2, sb2);
                                        boolean z3 = str3 == null || "}".equals(str3);
                                        if (!z3) {
                                            zzedVar2.zzL(zzd5);
                                            kb.f(zzedVar2);
                                            String g2 = kb.g(zzedVar2, sb2);
                                            if (!"".equals(g2) && ":".equals(kb.e(zzedVar2, sb2))) {
                                                kb.f(zzedVar2);
                                                StringBuilder sb3 = new StringBuilder();
                                                boolean z4 = false;
                                                while (true) {
                                                    if (z4) {
                                                        sb = sb3.toString();
                                                        break;
                                                    }
                                                    int zzd6 = zzedVar2.zzd();
                                                    boolean z5 = z4;
                                                    String e3 = kb.e(zzedVar2, sb2);
                                                    if (e3 == null) {
                                                        sb = null;
                                                        break;
                                                    } else if ("}".equals(e3) || ";".equals(e3)) {
                                                        zzedVar2.zzL(zzd6);
                                                        z4 = true;
                                                    } else {
                                                        sb3.append(e3);
                                                        z4 = z5;
                                                    }
                                                }
                                                if (sb != null && !"".equals(sb)) {
                                                    int zzd7 = zzedVar2.zzd();
                                                    String e4 = kb.e(zzedVar2, sb2);
                                                    if (!";".equals(e4)) {
                                                        if ("}".equals(e4)) {
                                                            zzedVar2.zzL(zzd7);
                                                        }
                                                    }
                                                    if ("color".equals(g2)) {
                                                        zzalqVar.zzk(zzde.zza(sb));
                                                    } else if ("background-color".equals(g2)) {
                                                        zzalqVar.zzh(zzde.zza(sb));
                                                    } else if ("ruby-position".equals(g2)) {
                                                        if ("over".equals(sb)) {
                                                            zzalqVar.zzp(1);
                                                        } else if ("under".equals(sb)) {
                                                            zzalqVar.zzp(2);
                                                        }
                                                    } else if ("text-combine-upright".equals(g2)) {
                                                        zzalqVar.zzj("all".equals(sb) || sb.startsWith("digits"));
                                                    } else if ("text-decoration".equals(g2)) {
                                                        if ("underline".equals(sb)) {
                                                            zzalqVar.zzq(true);
                                                        }
                                                    } else if ("font-family".equals(g2)) {
                                                        zzalqVar.zzl(sb);
                                                    } else if ("font-weight".equals(g2)) {
                                                        if ("bold".equals(sb)) {
                                                            zzalqVar.zzi(true);
                                                        }
                                                    } else if ("font-style".equals(g2)) {
                                                        if ("italic".equals(sb)) {
                                                            zzalqVar.zzo(true);
                                                        }
                                                    } else if ("font-size".equals(g2)) {
                                                        Matcher matcher2 = kb.f19528a.matcher(zzfwa.zza(sb));
                                                        if (matcher2.matches()) {
                                                            String group2 = matcher2.group(2);
                                                            group2.getClass();
                                                            int hashCode = group2.hashCode();
                                                            if (hashCode == 37) {
                                                                if (group2.equals("%")) {
                                                                    c2 = 2;
                                                                    if (c2 == 0) {
                                                                    }
                                                                    String group3 = matcher2.group(i4);
                                                                    group3.getClass();
                                                                    zzalqVar.zzm(Float.parseFloat(group3));
                                                                    z2 = z3;
                                                                }
                                                                c2 = 65535;
                                                                if (c2 == 0) {
                                                                }
                                                                String group32 = matcher2.group(i4);
                                                                group32.getClass();
                                                                zzalqVar.zzm(Float.parseFloat(group32));
                                                                z2 = z3;
                                                            } else if (hashCode != 3240) {
                                                                if (hashCode == 3592 && group2.equals("px")) {
                                                                    c2 = 0;
                                                                    if (c2 == 0) {
                                                                        i4 = 1;
                                                                        if (c2 == 1) {
                                                                            zzalqVar.zzn(2);
                                                                        } else {
                                                                            if (c2 != 2) {
                                                                                throw new IllegalStateException();
                                                                            }
                                                                            zzalqVar.zzn(3);
                                                                        }
                                                                    } else {
                                                                        i4 = 1;
                                                                        zzalqVar.zzn(1);
                                                                    }
                                                                    String group322 = matcher2.group(i4);
                                                                    group322.getClass();
                                                                    zzalqVar.zzm(Float.parseFloat(group322));
                                                                    z2 = z3;
                                                                }
                                                                c2 = 65535;
                                                                if (c2 == 0) {
                                                                }
                                                                String group3222 = matcher2.group(i4);
                                                                group3222.getClass();
                                                                zzalqVar.zzm(Float.parseFloat(group3222));
                                                                z2 = z3;
                                                            } else {
                                                                if (group2.equals("em")) {
                                                                    c2 = 1;
                                                                    if (c2 == 0) {
                                                                    }
                                                                    String group32222 = matcher2.group(i4);
                                                                    group32222.getClass();
                                                                    zzalqVar.zzm(Float.parseFloat(group32222));
                                                                    z2 = z3;
                                                                }
                                                                c2 = 65535;
                                                                if (c2 == 0) {
                                                                }
                                                                String group322222 = matcher2.group(i4);
                                                                group322222.getClass();
                                                                zzalqVar.zzm(Float.parseFloat(group322222));
                                                                z2 = z3;
                                                            }
                                                        } else {
                                                            zzdt.zzf("WebvttCssParser", "Invalid font-size: '" + sb + "'.");
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        z2 = z3;
                                    }
                                    if ("}".equals(str3)) {
                                        arrayList3.add(zzalqVar);
                                    }
                                    i5 = -1;
                                    i6 = 0;
                                    i3 = 1;
                                }
                            }
                            str = null;
                            if (str == null) {
                                break;
                            } else {
                                break;
                            }
                        }
                    }
                    zzalr zzc = zzaly.zzc(zzedVar, arrayList);
                    if (zzc != null) {
                        arrayList2.add(zzc);
                    }
                    zzalzVar = this;
                }
            }
        } catch (zzbh e5) {
            throw new IllegalArgumentException(e5);
        }
    }
}
