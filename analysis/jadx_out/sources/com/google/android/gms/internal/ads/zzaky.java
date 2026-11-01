package com.google.android.gms.internal.ads;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bykv.vk.component.ttvideo.player.C;
import g.abn;
import g.awf;
import g.bqk;
import g.dsn;
import g.dub;
import g.ell;
import g.hdy;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class zzaky implements zzaki {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f4235a = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    /* renamed from: b, reason: collision with root package name */
    public LinkedHashMap f4236b;

    /* renamed from: c, reason: collision with root package name */
    public float f4237c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f4238d;

    /* renamed from: e, reason: collision with root package name */
    public float f4239e;

    /* renamed from: f, reason: collision with root package name */
    public final bqk f4240f;

    /* renamed from: g, reason: collision with root package name */
    public final zzed f4241g;

    public zzaky() {
        this(null);
    }

    public zzaky(List list) {
        this.f4237c = -3.4028235E38f;
        this.f4239e = -3.4028235E38f;
        this.f4241g = new zzed();
        if (list == null || list.isEmpty()) {
            this.f4238d = false;
            this.f4240f = null;
            return;
        }
        this.f4238d = true;
        String zzB = zzen.zzB((byte[]) list.get(0));
        zzdb.zzd(zzB.startsWith("Format:"));
        bqk f2 = bqk.f(zzB);
        f2.getClass();
        this.f4240f = f2;
        j(new zzed((byte[]) list.get(1)), StandardCharsets.UTF_8);
    }

    public static int h(long j, ArrayList arrayList, ArrayList arrayList2) {
        int i;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                i = 0;
                break;
            }
            if (((Long) arrayList.get(size)).longValue() == j) {
                return size;
            }
            if (((Long) arrayList.get(size)).longValue() < j) {
                i = size + 1;
                break;
            }
        }
        arrayList.add(i, Long.valueOf(j));
        arrayList2.add(i, i == 0 ? new ArrayList() : new ArrayList((Collection) arrayList2.get(i - 1)));
        return i;
    }

    public static long i(String str) {
        Matcher matcher = f4235a.matcher(str.trim());
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        String group = matcher.group(1);
        int i = zzen.zza;
        long parseLong = Long.parseLong(group) * 3600000000L;
        long parseLong2 = Long.parseLong(matcher.group(2)) * 60000000;
        return parseLong + parseLong2 + (Long.parseLong(matcher.group(3)) * C.MICROS_PER_SECOND) + (Long.parseLong(matcher.group(4)) * ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:47:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x029a A[Catch: RuntimeException -> 0x01ed, TRY_LEAVE, TryCatch #0 {RuntimeException -> 0x01ed, blocks: (B:49:0x01bd, B:51:0x01cb, B:53:0x01d1, B:57:0x01f2, B:59:0x01f6, B:60:0x0205, B:62:0x0209, B:63:0x0218, B:65:0x021f, B:67:0x0225, B:69:0x0242, B:71:0x0246, B:74:0x0257, B:76:0x025b, B:79:0x026c, B:81:0x0270, B:84:0x0281, B:86:0x0285, B:89:0x0296, B:91:0x029a, B:93:0x02a0, B:98:0x02bf, B:96:0x02b0, B:109:0x022d, B:55:0x01dc), top: B:48:0x01bd, inners: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j(zzed zzedVar, Charset charset) {
        char c2;
        char c3;
        String trim;
        int i;
        Integer k;
        Integer k2;
        int i2;
        float f2;
        int i3;
        int i4;
        hdy hdyVar;
        int parseInt;
        int i5;
        while (true) {
            String zzz = zzedVar.zzz(charset);
            if (zzz == null) {
                return;
            }
            char c4 = '[';
            if ("[Script Info]".equalsIgnoreCase(zzz)) {
                while (true) {
                    String zzz2 = zzedVar.zzz(charset);
                    if (zzz2 != null && (zzedVar.zzb() == 0 || zzedVar.zza(charset) != '[')) {
                        String[] split = zzz2.split(":");
                        if (split.length == 2) {
                            String zza = zzfwa.zza(split[0].trim());
                            switch (zza.hashCode()) {
                                case 1879649548:
                                    if (zza.equals("playresx")) {
                                        c2 = 0;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 1879649549:
                                    if (zza.equals("playresy")) {
                                        c2 = 1;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                default:
                                    c2 = 65535;
                                    break;
                            }
                            if (c2 == 0) {
                                this.f4237c = Float.parseFloat(split[1].trim());
                            } else if (c2 == 1) {
                                try {
                                    this.f4239e = Float.parseFloat(split[1].trim());
                                } catch (NumberFormatException unused) {
                                }
                            }
                        }
                    }
                }
            } else if ("[V4+ Styles]".equalsIgnoreCase(zzz)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                while (true) {
                    dsn dsnVar = null;
                    while (true) {
                        String zzz3 = zzedVar.zzz(charset);
                        if (zzz3 != null && (zzedVar.zzb() == 0 || zzedVar.zza(charset) != c4)) {
                            if (zzz3.startsWith("Format:")) {
                                String[] split2 = TextUtils.split(zzz3.substring(7), ",");
                                int i6 = 0;
                                int i7 = -1;
                                int i8 = -1;
                                int i9 = -1;
                                int i10 = -1;
                                int i11 = -1;
                                int i12 = -1;
                                int i13 = -1;
                                int i14 = -1;
                                int i15 = -1;
                                int i16 = -1;
                                while (true) {
                                    int length = split2.length;
                                    if (i6 < length) {
                                        String zza2 = zzfwa.zza(split2[i6].trim());
                                        switch (zza2.hashCode()) {
                                            case -1178781136:
                                                if (zza2.equals("italic")) {
                                                    c3 = 6;
                                                    break;
                                                }
                                                c3 = 65535;
                                                break;
                                            case -1026963764:
                                                if (zza2.equals("underline")) {
                                                    c3 = 7;
                                                    break;
                                                }
                                                c3 = 65535;
                                                break;
                                            case -192095652:
                                                if (zza2.equals("strikeout")) {
                                                    c3 = '\b';
                                                    break;
                                                }
                                                c3 = 65535;
                                                break;
                                            case -70925746:
                                                if (zza2.equals("primarycolour")) {
                                                    c3 = 2;
                                                    break;
                                                }
                                                c3 = 65535;
                                                break;
                                            case 3029637:
                                                if (zza2.equals("bold")) {
                                                    c3 = 5;
                                                    break;
                                                }
                                                c3 = 65535;
                                                break;
                                            case 3373707:
                                                if (zza2.equals(abn.EXTRA_UA_APP_NAME)) {
                                                    c3 = 0;
                                                    break;
                                                }
                                                c3 = 65535;
                                                break;
                                            case 366554320:
                                                if (zza2.equals("fontsize")) {
                                                    c3 = 4;
                                                    break;
                                                }
                                                c3 = 65535;
                                                break;
                                            case 767321349:
                                                if (zza2.equals("borderstyle")) {
                                                    c3 = '\t';
                                                    break;
                                                }
                                                c3 = 65535;
                                                break;
                                            case 1767875043:
                                                if (zza2.equals("alignment")) {
                                                    c3 = 1;
                                                    break;
                                                }
                                                c3 = 65535;
                                                break;
                                            case 1988365454:
                                                if (zza2.equals("outlinecolour")) {
                                                    c3 = 3;
                                                    break;
                                                }
                                                c3 = 65535;
                                                break;
                                            default:
                                                c3 = 65535;
                                                break;
                                        }
                                        switch (c3) {
                                            case 0:
                                                i7 = i6;
                                                break;
                                            case 1:
                                                i8 = i6;
                                                break;
                                            case 2:
                                                i9 = i6;
                                                break;
                                            case 3:
                                                i10 = i6;
                                                break;
                                            case 4:
                                                i11 = i6;
                                                break;
                                            case 5:
                                                i12 = i6;
                                                break;
                                            case 6:
                                                i13 = i6;
                                                break;
                                            case 7:
                                                i14 = i6;
                                                break;
                                            case '\b':
                                                i15 = i6;
                                                break;
                                            case '\t':
                                                i16 = i6;
                                                break;
                                        }
                                        i6++;
                                    } else if (i7 != -1) {
                                        dsnVar = new dsn(i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, length);
                                    }
                                }
                            } else {
                                if (zzz3.startsWith("Style:")) {
                                    if (dsnVar == null) {
                                        zzdt.zzf("SsaParser", "Skipping 'Style:' line before 'Format:' line: ".concat(zzz3));
                                    } else {
                                        zzdb.zzd(zzz3.startsWith("Style:"));
                                        String[] split3 = TextUtils.split(zzz3.substring(6), ",");
                                        int length2 = split3.length;
                                        int i17 = dsnVar.f14723b;
                                        if (length2 != i17) {
                                            Locale locale = Locale.US;
                                            StringBuilder z = awf.z(i17, length2, "Skipping malformed 'Style:' line (expected ", " values, found ", "): '");
                                            z.append(zzz3);
                                            z.append("'");
                                            zzdt.zzf("SsaStyle", z.toString());
                                        } else {
                                            try {
                                                trim = split3[dsnVar.f14726e].trim();
                                                int i18 = dsnVar.h;
                                                if (i18 != -1) {
                                                    String trim2 = split3[i18].trim();
                                                    try {
                                                        i5 = Integer.parseInt(trim2.trim());
                                                    } catch (NumberFormatException unused2) {
                                                    }
                                                    switch (i5) {
                                                        case 1:
                                                        case 2:
                                                        case 3:
                                                        case 4:
                                                        case 5:
                                                        case 6:
                                                        case 7:
                                                        case 8:
                                                        case 9:
                                                            break;
                                                        default:
                                                            zzdt.zzf("SsaStyle", "Ignoring unknown alignment: ".concat(String.valueOf(trim2)));
                                                            i5 = -1;
                                                            break;
                                                    }
                                                    i = i5;
                                                } else {
                                                    i = -1;
                                                }
                                                int i19 = dsnVar.j;
                                                k = i19 != -1 ? hdy.k(split3[i19].trim()) : null;
                                                int i20 = dsnVar.f14724c;
                                                k2 = i20 != -1 ? hdy.k(split3[i20].trim()) : null;
                                                i2 = dsnVar.f14725d;
                                            } catch (RuntimeException e2) {
                                                zzdt.zzg("SsaStyle", "Skipping malformed 'Style:' line: '" + zzz3 + "'", e2);
                                            }
                                            if (i2 != -1) {
                                                String trim3 = split3[i2].trim();
                                                try {
                                                    f2 = Float.parseFloat(trim3);
                                                } catch (NumberFormatException e3) {
                                                    zzdt.zzg("SsaStyle", "Failed to parse font size: '" + trim3 + "'", e3);
                                                }
                                                int i21 = dsnVar.f14727f;
                                                boolean z2 = i21 == -1 && hdy.l(split3[i21].trim());
                                                int i22 = dsnVar.k;
                                                boolean z3 = i22 == -1 && hdy.l(split3[i22].trim());
                                                int i23 = dsnVar.f14722a;
                                                boolean z4 = i23 == -1 && hdy.l(split3[i23].trim());
                                                int i24 = dsnVar.f14728g;
                                                boolean z5 = i24 == -1 && hdy.l(split3[i24].trim());
                                                i3 = dsnVar.i;
                                                if (i3 != -1) {
                                                    String trim4 = split3[i3].trim();
                                                    try {
                                                        parseInt = Integer.parseInt(trim4.trim());
                                                    } catch (NumberFormatException unused3) {
                                                    }
                                                    if (parseInt == 1 || parseInt == 3) {
                                                        i4 = parseInt;
                                                        hdyVar = new hdy(trim, i, k, k2, f2, z2, z3, z4, z5, i4);
                                                        if (hdyVar != null) {
                                                            linkedHashMap.put(hdyVar.f19318d, hdyVar);
                                                        }
                                                    }
                                                    zzdt.zzf("SsaStyle", "Ignoring unknown BorderStyle: ".concat(String.valueOf(trim4)));
                                                }
                                                i4 = -1;
                                                hdyVar = new hdy(trim, i, k, k2, f2, z2, z3, z4, z5, i4);
                                                if (hdyVar != null) {
                                                }
                                            }
                                            f2 = -3.4028235E38f;
                                            int i212 = dsnVar.f14727f;
                                            if (i212 == -1) {
                                            }
                                            int i222 = dsnVar.k;
                                            if (i222 == -1) {
                                            }
                                            int i232 = dsnVar.f14722a;
                                            if (i232 == -1) {
                                            }
                                            int i242 = dsnVar.f14728g;
                                            if (i242 == -1) {
                                            }
                                            i3 = dsnVar.i;
                                            if (i3 != -1) {
                                            }
                                            i4 = -1;
                                            hdyVar = new hdy(trim, i, k, k2, f2, z2, z3, z4, z5, i4);
                                            if (hdyVar != null) {
                                            }
                                        }
                                        hdyVar = null;
                                        if (hdyVar != null) {
                                        }
                                    }
                                }
                                c4 = '[';
                            }
                        }
                    }
                }
                this.f4236b = linkedHashMap;
            } else if ("[V4 Styles]".equalsIgnoreCase(zzz)) {
                zzdt.zze("SsaParser", "[V4 Styles] are not supported");
            } else if ("[Events]".equalsIgnoreCase(zzz)) {
                return;
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:75:0x0193. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0184 A[Catch: RuntimeException -> 0x01a4, TRY_LEAVE, TryCatch #3 {RuntimeException -> 0x01a4, blocks: (B:65:0x0178, B:67:0x0184, B:74:0x018b, B:69:0x01a6, B:76:0x0196), top: B:64:0x0178 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01ad A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzaki
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(byte[] bArr, int i, int i2, zzakh zzakhVar, zzdg zzdgVar) {
        Charset charset;
        bqk bqkVar;
        zzed zzedVar;
        float f2;
        float f3;
        Layout.Alignment alignment;
        int i3;
        int i4;
        float f4;
        int i5;
        int i6;
        Integer num;
        Charset charset2;
        bqk bqkVar2;
        zzed zzedVar2;
        Matcher matcher;
        int i7;
        Matcher matcher2;
        Matcher matcher3;
        boolean find;
        boolean find2;
        PointF pointF;
        String group;
        String str;
        int i8;
        zzaky zzakyVar = this;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        zzed zzedVar3 = zzakyVar.f4241g;
        zzedVar3.zzJ(bArr, i + i2);
        zzedVar3.zzL(i);
        Charset zzC = zzedVar3.zzC();
        if (zzC == null) {
            zzC = StandardCharsets.UTF_8;
        }
        boolean z = zzakyVar.f4238d;
        if (!z) {
            zzakyVar.j(zzedVar3, zzC);
        }
        bqk bqkVar3 = z ? zzakyVar.f4240f : null;
        while (true) {
            String zzz = zzedVar3.zzz(zzC);
            int i9 = 1;
            if (zzz == null) {
                int i10 = 0;
                while (i10 < arrayList.size()) {
                    List list = (List) arrayList.get(i10);
                    if (list.isEmpty()) {
                        if (i10 != 0) {
                            i10++;
                        } else {
                            i10 = 0;
                        }
                    }
                    if (i10 == arrayList.size() - 1) {
                        throw new IllegalStateException();
                    }
                    zzdgVar.zza(new zzaka(list, ((Long) arrayList2.get(i10)).longValue(), ((Long) arrayList2.get(i10 + 1)).longValue() - ((Long) arrayList2.get(i10)).longValue()));
                    i10++;
                }
                return;
            }
            if (zzz.startsWith("Format:")) {
                bqkVar3 = bqk.f(zzz);
            } else {
                if (zzz.startsWith("Dialogue:")) {
                    if (bqkVar3 == null) {
                        zzdt.zzf("SsaParser", "Skipping dialogue line before complete format: ".concat(zzz));
                    } else {
                        int i11 = bqkVar3.f12014b;
                        zzdb.zzd(zzz.startsWith("Dialogue:"));
                        String[] split = zzz.substring(9).split(",", i11);
                        if (split.length != i11) {
                            zzdt.zzf("SsaParser", "Skipping dialogue line with fewer columns than format: ".concat(zzz));
                        } else {
                            long i12 = i(split[bqkVar3.f12015c]);
                            if (i12 == -9223372036854775807L) {
                                zzdt.zzf("SsaParser", "Skipping invalid timing: ".concat(zzz));
                            } else {
                                long i13 = i(split[bqkVar3.f12016d]);
                                if (i13 == -9223372036854775807L) {
                                    zzdt.zzf("SsaParser", "Skipping invalid timing: ".concat(zzz));
                                    charset = zzC;
                                    bqkVar = bqkVar3;
                                    zzedVar = zzedVar3;
                                } else {
                                    LinkedHashMap linkedHashMap = zzakyVar.f4236b;
                                    hdy hdyVar = (linkedHashMap == null || (i8 = bqkVar3.f12017e) == -1) ? null : (hdy) linkedHashMap.get(split[i8].trim());
                                    String str2 = split[bqkVar3.f12013a];
                                    Matcher matcher4 = ell.f15761b.matcher(str2);
                                    PointF pointF2 = null;
                                    int i14 = -1;
                                    while (matcher4.find()) {
                                        String group2 = matcher4.group(i9);
                                        group2.getClass();
                                        try {
                                            matcher2 = ell.f15762c.matcher(group2);
                                            charset2 = zzC;
                                        } catch (RuntimeException unused) {
                                            charset2 = zzC;
                                        }
                                        try {
                                            matcher3 = ell.f15763d.matcher(group2);
                                            find = matcher2.find();
                                            find2 = matcher3.find();
                                        } catch (RuntimeException unused2) {
                                            bqkVar2 = bqkVar3;
                                            zzedVar2 = zzedVar3;
                                            try {
                                                matcher = ell.f15760a.matcher(group2);
                                                if (matcher.find()) {
                                                }
                                                i7 = -1;
                                                if (i7 != -1) {
                                                }
                                            } catch (RuntimeException unused3) {
                                            }
                                            zzC = charset2;
                                            bqkVar3 = bqkVar2;
                                            zzedVar3 = zzedVar2;
                                            i9 = 1;
                                        }
                                        if (find) {
                                            if (find2) {
                                                bqkVar2 = bqkVar3;
                                                try {
                                                    StringBuilder sb = new StringBuilder();
                                                    zzedVar2 = zzedVar3;
                                                    try {
                                                        sb.append("Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override='");
                                                        sb.append(group2);
                                                        sb.append("'");
                                                        zzdt.zze("SsaStyle.Overrides", sb.toString());
                                                    } catch (RuntimeException unused4) {
                                                    }
                                                } catch (RuntimeException unused5) {
                                                    zzedVar2 = zzedVar3;
                                                    matcher = ell.f15760a.matcher(group2);
                                                    if (matcher.find()) {
                                                    }
                                                    i7 = -1;
                                                    if (i7 != -1) {
                                                    }
                                                    zzC = charset2;
                                                    bqkVar3 = bqkVar2;
                                                    zzedVar3 = zzedVar2;
                                                    i9 = 1;
                                                }
                                            } else {
                                                bqkVar2 = bqkVar3;
                                                zzedVar2 = zzedVar3;
                                            }
                                            str = matcher2.group(1);
                                            group = matcher2.group(2);
                                        } else {
                                            bqkVar2 = bqkVar3;
                                            zzedVar2 = zzedVar3;
                                            if (find2) {
                                                String group3 = matcher3.group(1);
                                                group = matcher3.group(2);
                                                str = group3;
                                            } else {
                                                pointF = null;
                                                if (pointF != null) {
                                                    pointF2 = pointF;
                                                }
                                                matcher = ell.f15760a.matcher(group2);
                                                if (matcher.find()) {
                                                    String group4 = matcher.group(1);
                                                    if (group4 == null) {
                                                        throw null;
                                                    }
                                                    try {
                                                        i7 = Integer.parseInt(group4.trim());
                                                    } catch (NumberFormatException unused6) {
                                                    }
                                                    switch (i7) {
                                                        case 1:
                                                        case 2:
                                                        case 3:
                                                        case 4:
                                                        case 5:
                                                        case 6:
                                                        case 7:
                                                        case 8:
                                                        case 9:
                                                            break;
                                                        default:
                                                            zzdt.zzf("SsaStyle", "Ignoring unknown alignment: ".concat(group4));
                                                            break;
                                                    }
                                                    if (i7 != -1) {
                                                        i14 = i7;
                                                    }
                                                    zzC = charset2;
                                                    bqkVar3 = bqkVar2;
                                                    zzedVar3 = zzedVar2;
                                                    i9 = 1;
                                                }
                                                i7 = -1;
                                                if (i7 != -1) {
                                                }
                                                zzC = charset2;
                                                bqkVar3 = bqkVar2;
                                                zzedVar3 = zzedVar2;
                                                i9 = 1;
                                            }
                                        }
                                        if (str == null) {
                                            throw null;
                                        }
                                        float parseFloat = Float.parseFloat(str.trim());
                                        if (group == null) {
                                            throw null;
                                        }
                                        pointF = new PointF(parseFloat, Float.parseFloat(group.trim()));
                                        if (pointF != null) {
                                        }
                                        matcher = ell.f15760a.matcher(group2);
                                        if (matcher.find()) {
                                        }
                                        i7 = -1;
                                        if (i7 != -1) {
                                        }
                                        zzC = charset2;
                                        bqkVar3 = bqkVar2;
                                        zzedVar3 = zzedVar2;
                                        i9 = 1;
                                    }
                                    charset = zzC;
                                    bqkVar = bqkVar3;
                                    zzedVar = zzedVar3;
                                    String replace = ell.f15761b.matcher(str2).replaceAll("").replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " ");
                                    float f5 = zzakyVar.f4237c;
                                    float f6 = zzakyVar.f4239e;
                                    SpannableString spannableString = new SpannableString(replace);
                                    zzcr zzcrVar = new zzcr();
                                    zzcrVar.zzl(spannableString);
                                    if (hdyVar != null) {
                                        boolean z2 = hdyVar.j;
                                        Integer num2 = hdyVar.i;
                                        f3 = -3.4028235E38f;
                                        if (num2 != null) {
                                            f2 = f5;
                                            spannableString.setSpan(new ForegroundColorSpan(num2.intValue()), 0, spannableString.length(), 33);
                                        } else {
                                            f2 = f5;
                                        }
                                        if (hdyVar.h == 3 && (num = hdyVar.f19316b) != null) {
                                            spannableString.setSpan(new BackgroundColorSpan(num.intValue()), 0, spannableString.length(), 33);
                                        }
                                        float f7 = hdyVar.f19317c;
                                        if (f7 != -3.4028235E38f && f6 != -3.4028235E38f) {
                                            zzcrVar.zzn(f7 / f6, 1);
                                        }
                                        if (!hdyVar.f19319e) {
                                            i5 = 0;
                                            i6 = 33;
                                            if (z2) {
                                                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
                                            }
                                        } else if (z2) {
                                            i5 = 0;
                                            i6 = 33;
                                            spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
                                        } else {
                                            i5 = 0;
                                            i6 = 33;
                                            spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
                                        }
                                        if (hdyVar.f19315a) {
                                            spannableString.setSpan(new UnderlineSpan(), i5, spannableString.length(), i6);
                                        }
                                        if (hdyVar.f19320f) {
                                            spannableString.setSpan(new StrikethroughSpan(), i5, spannableString.length(), i6);
                                        }
                                    } else {
                                        f2 = f5;
                                        f3 = -3.4028235E38f;
                                    }
                                    int i15 = i14;
                                    int i16 = i15 != -1 ? i15 : hdyVar != null ? hdyVar.f19321g : -1;
                                    switch (i16) {
                                        case 0:
                                        default:
                                            dub.g(i16, "Unknown alignment: ", "SsaParser");
                                        case -1:
                                            alignment = null;
                                            break;
                                        case 1:
                                        case 4:
                                        case 7:
                                            alignment = Layout.Alignment.ALIGN_NORMAL;
                                            break;
                                        case 2:
                                        case 5:
                                        case 8:
                                            alignment = Layout.Alignment.ALIGN_CENTER;
                                            break;
                                        case 3:
                                        case 6:
                                        case 9:
                                            alignment = Layout.Alignment.ALIGN_OPPOSITE;
                                            break;
                                    }
                                    zzcrVar.zzm(alignment);
                                    int i17 = Integer.MIN_VALUE;
                                    switch (i16) {
                                        case 0:
                                        default:
                                            dub.g(i16, "Unknown alignment: ", "SsaParser");
                                        case -1:
                                            i3 = Integer.MIN_VALUE;
                                            break;
                                        case 1:
                                        case 4:
                                        case 7:
                                            i3 = 0;
                                            break;
                                        case 2:
                                        case 5:
                                        case 8:
                                            i3 = 1;
                                            break;
                                        case 3:
                                        case 6:
                                        case 9:
                                            i3 = 2;
                                            break;
                                    }
                                    zzcrVar.zzi(i3);
                                    switch (i16) {
                                        case -1:
                                            break;
                                        case 0:
                                        default:
                                            dub.g(i16, "Unknown alignment: ", "SsaParser");
                                            break;
                                        case 1:
                                        case 2:
                                        case 3:
                                            i17 = 2;
                                            break;
                                        case 4:
                                        case 5:
                                        case 6:
                                            i17 = 1;
                                            break;
                                        case 7:
                                        case 8:
                                        case 9:
                                            i17 = 0;
                                            break;
                                    }
                                    zzcrVar.zzf(i17);
                                    PointF pointF3 = pointF2;
                                    if (pointF3 == null || f6 == f3 || f2 == f3) {
                                        int zzb = zzcrVar.zzb();
                                        zzcrVar.zzh(zzb != 0 ? zzb != 1 ? zzb != 2 ? -3.4028235E38f : 0.95f : 0.5f : 0.05f);
                                        int zza = zzcrVar.zza();
                                        if (zza != 0) {
                                            i4 = 0;
                                            f4 = zza != 1 ? zza != 2 ? -3.4028235E38f : 0.95f : 0.5f;
                                        } else {
                                            i4 = 0;
                                            f4 = 0.05f;
                                        }
                                        zzcrVar.zze(f4, i4);
                                    } else {
                                        zzcrVar.zzh(pointF3.x / f2);
                                        zzcrVar.zze(pointF3.y / f6, 0);
                                    }
                                    zzct zzp = zzcrVar.zzp();
                                    int h = h(i13, arrayList2, arrayList);
                                    for (int h2 = h(i12, arrayList2, arrayList); h2 < h; h2++) {
                                        ((List) arrayList.get(h2)).add(zzp);
                                    }
                                }
                                zzakyVar = this;
                                zzC = charset;
                                bqkVar3 = bqkVar;
                                zzedVar3 = zzedVar;
                            }
                        }
                    }
                }
                charset = zzC;
                bqkVar = bqkVar3;
                zzedVar = zzedVar3;
                zzakyVar = this;
                zzC = charset;
                bqkVar3 = bqkVar;
                zzedVar3 = zzedVar;
            }
        }
    }
}
