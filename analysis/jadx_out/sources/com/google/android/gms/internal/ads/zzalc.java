package com.google.android.gms.internal.ads;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class zzalc implements zzaki {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f4242a = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f4243b = Pattern.compile("\\{\\\\.*?\\}");

    /* renamed from: c, reason: collision with root package name */
    public final StringBuilder f4244c = new StringBuilder();

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f4245d = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final zzed f4246e = new zzed();

    public static long f(Matcher matcher, int i) {
        String group = matcher.group(i + 1);
        long parseLong = group != null ? Long.parseLong(group) * 3600000 : 0L;
        String group2 = matcher.group(i + 2);
        group2.getClass();
        long parseLong2 = (Long.parseLong(group2) * 60000) + parseLong;
        String group3 = matcher.group(i + 3);
        group3.getClass();
        long parseLong3 = (Long.parseLong(group3) * 1000) + parseLong2;
        String group4 = matcher.group(i + 4);
        if (group4 != null) {
            parseLong3 += Long.parseLong(group4);
        }
        return parseLong3 * 1000;
    }

    public static float zzb(int i) {
        if (i == 0) {
            return 0.08f;
        }
        if (i == 1) {
            return 0.5f;
        }
        if (i == 2) {
            return 0.92f;
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.google.android.gms.internal.ads.zzaki
    public final void zza(byte[] bArr, int i, int i2, zzakh zzakhVar, zzdg zzdgVar) {
        Charset charset;
        String str;
        char c2;
        char c3;
        zzct zzp;
        zzalc zzalcVar = this;
        zzed zzedVar = zzalcVar.f4246e;
        zzedVar.zzJ(bArr, i + i2);
        zzedVar.zzL(i);
        Charset zzC = zzedVar.zzC();
        if (zzC == null) {
            zzC = StandardCharsets.UTF_8;
        }
        while (true) {
            String zzz = zzedVar.zzz(zzC);
            if (zzz == null) {
                return;
            }
            if (zzz.length() != 0) {
                try {
                    Integer.parseInt(zzz);
                    String zzz2 = zzedVar.zzz(zzC);
                    if (zzz2 == null) {
                        zzdt.zzf("SubripParser", "Unexpected end");
                        return;
                    }
                    Matcher matcher = f4242a.matcher(zzz2);
                    if (matcher.matches()) {
                        long f2 = f(matcher, 1);
                        long f3 = f(matcher, 6);
                        StringBuilder sb = zzalcVar.f4244c;
                        sb.setLength(0);
                        ArrayList arrayList = zzalcVar.f4245d;
                        arrayList.clear();
                        for (String zzz3 = zzedVar.zzz(zzC); !TextUtils.isEmpty(zzz3); zzz3 = zzedVar.zzz(zzC)) {
                            if (sb.length() > 0) {
                                sb.append("<br>");
                            }
                            String trim = zzz3.trim();
                            StringBuilder sb2 = new StringBuilder(trim);
                            Matcher matcher2 = f4243b.matcher(trim);
                            int i3 = 0;
                            while (matcher2.find()) {
                                String group = matcher2.group();
                                arrayList.add(group);
                                int start = matcher2.start() - i3;
                                int length = group.length();
                                sb2.replace(start, start + length, "");
                                i3 += length;
                            }
                            sb.append(sb2.toString());
                        }
                        Spanned fromHtml = Html.fromHtml(sb.toString());
                        int i4 = 0;
                        while (true) {
                            if (i4 < arrayList.size()) {
                                str = (String) arrayList.get(i4);
                                if (!str.matches("\\{\\\\an[1-9]\\}")) {
                                    i4++;
                                }
                            } else {
                                str = null;
                            }
                        }
                        zzcr zzcrVar = new zzcr();
                        zzcrVar.zzl(fromHtml);
                        if (str == null) {
                            zzp = zzcrVar.zzp();
                            charset = zzC;
                        } else {
                            switch (str.hashCode()) {
                                case -685620710:
                                    if (str.equals("{\\an1}")) {
                                        c2 = 0;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -685620648:
                                    if (str.equals("{\\an3}")) {
                                        c2 = 3;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -685620617:
                                    if (str.equals("{\\an4}")) {
                                        c2 = 1;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -685620555:
                                    if (str.equals("{\\an6}")) {
                                        c2 = 4;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -685620524:
                                    if (str.equals("{\\an7}")) {
                                        c2 = 2;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -685620462:
                                    if (str.equals("{\\an9}")) {
                                        c2 = 5;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                default:
                                    c2 = 65535;
                                    break;
                            }
                            charset = zzC;
                            if (c2 == 0 || c2 == 1 || c2 == 2) {
                                zzcrVar.zzi(0);
                            } else if (c2 == 3 || c2 == 4 || c2 == 5) {
                                zzcrVar.zzi(2);
                            } else {
                                zzcrVar.zzi(1);
                            }
                            switch (str.hashCode()) {
                                case -685620710:
                                    if (str.equals("{\\an1}")) {
                                        c3 = 0;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case -685620679:
                                    if (str.equals("{\\an2}")) {
                                        c3 = 1;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case -685620648:
                                    if (str.equals("{\\an3}")) {
                                        c3 = 2;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case -685620524:
                                    if (str.equals("{\\an7}")) {
                                        c3 = 3;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case -685620493:
                                    if (str.equals("{\\an8}")) {
                                        c3 = 4;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                case -685620462:
                                    if (str.equals("{\\an9}")) {
                                        c3 = 5;
                                        break;
                                    }
                                    c3 = 65535;
                                    break;
                                default:
                                    c3 = 65535;
                                    break;
                            }
                            if (c3 == 0 || c3 == 1 || c3 == 2) {
                                zzcrVar.zzf(2);
                            } else if (c3 == 3 || c3 == 4 || c3 == 5) {
                                zzcrVar.zzf(0);
                            } else {
                                zzcrVar.zzf(1);
                            }
                            zzcrVar.zzh(zzb(zzcrVar.zzb()));
                            zzcrVar.zze(zzb(zzcrVar.zza()), 0);
                            zzp = zzcrVar.zzp();
                        }
                        zzdgVar.zza(new zzaka(zzfzo.zzo(zzp), f2, f3 - f2));
                    } else {
                        charset = zzC;
                        zzdt.zzf("SubripParser", "Skipping invalid timing: ".concat(zzz2));
                    }
                } catch (NumberFormatException unused) {
                    charset = zzC;
                    zzdt.zzf("SubripParser", "Skipping invalid index: ".concat(zzz));
                }
            } else {
                charset = zzC;
            }
            zzalcVar = this;
            zzC = charset;
        }
    }
}
