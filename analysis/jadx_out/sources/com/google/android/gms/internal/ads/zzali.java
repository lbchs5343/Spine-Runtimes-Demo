package com.google.android.gms.internal.ads;

import android.text.Layout;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.aem;
import g.aot;
import g.asr;
import g.csc;
import g.dla;
import g.dub;
import g.fzn;
import g.gvt;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes3.dex */
public final class zzali implements zzaki {
    public final XmlPullParserFactory i;

    /* renamed from: f, reason: collision with root package name */
    public static final Pattern f4252f = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* renamed from: g, reason: collision with root package name */
    public static final Pattern f4253g = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f4248b = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f4249c = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f4250d = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");
    public static final Pattern h = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f4247a = Pattern.compile("^(\\d+) (\\d+)$");

    /* renamed from: e, reason: collision with root package name */
    public static final gvt f4251e = new gvt(1, 30.0f, 1);

    public zzali() {
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.i = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e2) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e2);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:115:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x034b  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0357  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0170  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static dla j(XmlPullParser xmlPullParser, dla dlaVar) {
        char c2;
        char c3;
        Matcher matcher;
        char c4;
        char c5;
        char c6;
        char c7;
        csc cscVar;
        char c8;
        zzgbo zzb;
        int i;
        char c9;
        int i2;
        int attributeCount = xmlPullParser.getAttributeCount();
        dla dlaVar2 = dlaVar;
        for (int i3 = 0; i3 < attributeCount; i3++) {
            String attributeValue = xmlPullParser.getAttributeValue(i3);
            String attributeName = xmlPullParser.getAttributeName(i3);
            switch (attributeName.hashCode()) {
                case -1550943582:
                    if (attributeName.equals("fontStyle")) {
                        c2 = 6;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1224696685:
                    if (attributeName.equals("fontFamily")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1065511464:
                    if (attributeName.equals("textAlign")) {
                        c2 = 7;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -879295043:
                    if (attributeName.equals("textDecoration")) {
                        c2 = '\f';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -734428249:
                    if (attributeName.equals("fontWeight")) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3355:
                    if (attributeName.equals(TTDownloadField.TT_ID)) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3511770:
                    if (attributeName.equals("ruby")) {
                        c2 = '\n';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 94842723:
                    if (attributeName.equals("color")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 109403361:
                    if (attributeName.equals("shear")) {
                        c2 = 14;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 110138194:
                    if (attributeName.equals("textCombine")) {
                        c2 = '\t';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 365601008:
                    if (attributeName.equals("fontSize")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 921125321:
                    if (attributeName.equals("textEmphasis")) {
                        c2 = '\r';
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1115953443:
                    if (attributeName.equals("rubyPosition")) {
                        c2 = 11;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1287124693:
                    if (attributeName.equals("backgroundColor")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1754920356:
                    if (attributeName.equals("multiRowAlign")) {
                        c2 = '\b';
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            switch (c2) {
                case 0:
                    if ("style".equals(xmlPullParser.getName())) {
                        dlaVar2 = m(dlaVar2);
                        dlaVar2.f14352f = attributeValue;
                        continue;
                    }
                case 1:
                    dlaVar2 = m(dlaVar2);
                    try {
                        dlaVar2.f14351e = zzde.zzb(attributeValue);
                        dlaVar2.f14353g = true;
                        continue;
                    } catch (IllegalArgumentException unused) {
                        dub.a(attributeValue, "Failed parsing background value: ", "TtmlParser");
                    }
                case 2:
                    dlaVar2 = m(dlaVar2);
                    try {
                        dlaVar2.n = zzde.zzb(attributeValue);
                        dlaVar2.q = true;
                        continue;
                    } catch (IllegalArgumentException unused2) {
                        dub.a(attributeValue, "Failed parsing color value: ", "TtmlParser");
                    }
                case 3:
                    dlaVar2 = m(dlaVar2);
                    dlaVar2.h = attributeValue;
                    continue;
                case 4:
                    try {
                        dlaVar2 = m(dlaVar2);
                        int i4 = zzen.zza;
                        c3 = 65535;
                        String[] split = attributeValue.split("\\s+", -1);
                        int length = split.length;
                        Pattern pattern = f4248b;
                        if (length == 1) {
                            matcher = pattern.matcher(attributeValue);
                        } else {
                            if (length != 2) {
                                throw new zzake("Invalid number of entries for fontSize: " + length + ".");
                            }
                            matcher = pattern.matcher(split[1]);
                            zzdt.zzf("TtmlParser", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
                        }
                    } catch (zzake unused3) {
                        dub.a(attributeValue, "Failed parsing fontSize value: ", "TtmlParser");
                    }
                    if (!matcher.matches()) {
                        throw new zzake("Invalid expression for fontSize: '" + attributeValue + "'.");
                    }
                    String group = matcher.group(3);
                    if (group == null) {
                        throw null;
                    }
                    int hashCode = group.hashCode();
                    if (hashCode != 37) {
                        if (hashCode != 3240) {
                            if (hashCode == 3592 && group.equals("px")) {
                                c3 = 0;
                            }
                        } else if (group.equals("em")) {
                            c3 = 1;
                        }
                    } else if (group.equals("%")) {
                        c3 = 2;
                    }
                    if (c3 == 0) {
                        dlaVar2.o = 1;
                    } else if (c3 == 1) {
                        dlaVar2.o = 2;
                    } else {
                        if (c3 != 2) {
                            throw new zzake("Invalid unit for fontSize: '" + group + "'.");
                        }
                        dlaVar2.o = 3;
                    }
                    String group2 = matcher.group(1);
                    if (group2 == null) {
                        throw null;
                    }
                    dlaVar2.f14348b = Float.parseFloat(group2);
                    continue;
                    break;
                case 5:
                    dlaVar2 = m(dlaVar2);
                    dlaVar2.f14347a = "bold".equalsIgnoreCase(attributeValue) ? 1 : 0;
                    continue;
                case 6:
                    dlaVar2 = m(dlaVar2);
                    dlaVar2.m = "italic".equalsIgnoreCase(attributeValue) ? 1 : 0;
                    continue;
                case 7:
                    dlaVar2 = m(dlaVar2);
                    dlaVar2.f14349c = l(attributeValue);
                    continue;
                case '\b':
                    dlaVar2 = m(dlaVar2);
                    dlaVar2.k = l(attributeValue);
                    continue;
                case '\t':
                    String zza = zzfwa.zza(attributeValue);
                    int hashCode2 = zza.hashCode();
                    if (hashCode2 != 96673) {
                        if (hashCode2 == 3387192 && zza.equals(LiveConfigKey.NONE)) {
                            c4 = 0;
                            if (c4 == 0) {
                                if (c4 == 1) {
                                    dlaVar2 = m(dlaVar2);
                                    dlaVar2.p = 1;
                                    break;
                                }
                            } else {
                                dlaVar2 = m(dlaVar2);
                                dlaVar2.p = 0;
                            }
                        }
                        c4 = 65535;
                        if (c4 == 0) {
                        }
                    } else {
                        if (zza.equals("all")) {
                            c4 = 1;
                            if (c4 == 0) {
                            }
                        }
                        c4 = 65535;
                        if (c4 == 0) {
                        }
                    }
                    break;
                case '\n':
                    String zza2 = zzfwa.zza(attributeValue);
                    switch (zza2.hashCode()) {
                        case -618561360:
                            if (zza2.equals("baseContainer")) {
                                c5 = 2;
                                break;
                            }
                            c5 = 65535;
                            break;
                        case -410956671:
                            if (zza2.equals("container")) {
                                c5 = 0;
                                break;
                            }
                            c5 = 65535;
                            break;
                        case -250518009:
                            if (zza2.equals("delimiter")) {
                                c5 = 5;
                                break;
                            }
                            c5 = 65535;
                            break;
                        case -136074796:
                            if (zza2.equals("textContainer")) {
                                c5 = 4;
                                break;
                            }
                            c5 = 65535;
                            break;
                        case 3016401:
                            if (zza2.equals("base")) {
                                c5 = 1;
                                break;
                            }
                            c5 = 65535;
                            break;
                        case 3556653:
                            if (zza2.equals("text")) {
                                c5 = 3;
                                break;
                            }
                            c5 = 65535;
                            break;
                        default:
                            c5 = 65535;
                            break;
                    }
                    if (c5 != 0) {
                        if (c5 != 1 && c5 != 2) {
                            if (c5 != 3 && c5 != 4) {
                                if (c5 == 5) {
                                    dlaVar2 = m(dlaVar2);
                                    dlaVar2.l = 4;
                                    break;
                                }
                            } else {
                                dlaVar2 = m(dlaVar2);
                                dlaVar2.l = 3;
                                break;
                            }
                        } else {
                            dlaVar2 = m(dlaVar2);
                            dlaVar2.l = 2;
                            break;
                        }
                    } else {
                        dlaVar2 = m(dlaVar2);
                        dlaVar2.l = 1;
                        break;
                    }
                    break;
                case 11:
                    String zza3 = zzfwa.zza(attributeValue);
                    int hashCode3 = zza3.hashCode();
                    if (hashCode3 != -1392885889) {
                        if (hashCode3 == 92734940 && zza3.equals("after")) {
                            c6 = 1;
                            if (c6 == 0) {
                                if (c6 == 1) {
                                    dlaVar2 = m(dlaVar2);
                                    dlaVar2.f14350d = 2;
                                    break;
                                }
                            } else {
                                dlaVar2 = m(dlaVar2);
                                dlaVar2.f14350d = 1;
                                break;
                            }
                        }
                        c6 = 65535;
                        if (c6 == 0) {
                        }
                    } else {
                        if (zza3.equals("before")) {
                            c6 = 0;
                            if (c6 == 0) {
                            }
                        }
                        c6 = 65535;
                        if (c6 == 0) {
                        }
                    }
                    break;
                case '\f':
                    String zza4 = zzfwa.zza(attributeValue);
                    switch (zza4.hashCode()) {
                        case -1461280213:
                            if (zza4.equals("nounderline")) {
                                c7 = 3;
                                break;
                            }
                            c7 = 65535;
                            break;
                        case -1026963764:
                            if (zza4.equals("underline")) {
                                c7 = 2;
                                break;
                            }
                            c7 = 65535;
                            break;
                        case 913457136:
                            if (zza4.equals("nolinethrough")) {
                                c7 = 1;
                                break;
                            }
                            c7 = 65535;
                            break;
                        case 1679736913:
                            if (zza4.equals("linethrough")) {
                                c7 = 0;
                                break;
                            }
                            c7 = 65535;
                            break;
                        default:
                            c7 = 65535;
                            break;
                    }
                    if (c7 == 0) {
                        dlaVar2 = m(dlaVar2);
                        dlaVar2.i = 1;
                        break;
                    } else {
                        if (c7 == 1) {
                            dlaVar2 = m(dlaVar2);
                            dlaVar2.i = 0;
                        } else if (c7 == 2) {
                            dlaVar2 = m(dlaVar2);
                            dlaVar2.r = 1;
                        } else if (c7 == 3) {
                            dlaVar2 = m(dlaVar2);
                            dlaVar2.r = 0;
                        }
                    }
                    break;
                case '\r':
                    dlaVar2 = m(dlaVar2);
                    Pattern pattern2 = csc.f13417b;
                    if (attributeValue != null) {
                        String zza5 = zzfwa.zza(attributeValue.trim());
                        if (!zza5.isEmpty()) {
                            zzfzt zzm = zzfzt.zzm(TextUtils.split(zza5, csc.f13417b));
                            String str = (String) zzfzu.zza(zzgbq.zzb(csc.f13416a, zzm), "outside");
                            int hashCode4 = str.hashCode();
                            if (hashCode4 != -1106037339) {
                                if (hashCode4 == 92734940 && str.equals("after")) {
                                    c8 = 0;
                                    int i5 = c8 == 0 ? c8 != 1 ? 1 : -2 : 2;
                                    zzb = zzgbq.zzb(csc.f13418c, zzm);
                                    if (zzb.isEmpty()) {
                                        String str2 = (String) zzb.iterator().next();
                                        if (str2.hashCode() == 3387192 && str2.equals(LiveConfigKey.NONE)) {
                                            i = 0;
                                            i2 = 0;
                                            cscVar = new csc(i2, i, i5);
                                            dlaVar2.s = cscVar;
                                            break;
                                        }
                                        i = 0;
                                        i2 = -1;
                                        cscVar = new csc(i2, i, i5);
                                        dlaVar2.s = cscVar;
                                    } else {
                                        zzgbo zzb2 = zzgbq.zzb(csc.f13420e, zzm);
                                        zzgbo zzb3 = zzgbq.zzb(csc.f13419d, zzm);
                                        if (!zzb2.isEmpty() || !zzb3.isEmpty()) {
                                            String str3 = (String) zzfzu.zza(zzb2, "filled");
                                            i = (str3.hashCode() == 3417674 && str3.equals("open")) ? 2 : 1;
                                            String str4 = (String) zzfzu.zza(zzb3, "circle");
                                            int hashCode5 = str4.hashCode();
                                            if (hashCode5 != -905816648) {
                                                if (hashCode5 == 99657 && str4.equals("dot")) {
                                                    c9 = 0;
                                                    i2 = c9 == 0 ? c9 != 1 ? 1 : 3 : 2;
                                                    cscVar = new csc(i2, i, i5);
                                                    dlaVar2.s = cscVar;
                                                }
                                                c9 = 65535;
                                                if (c9 == 0) {
                                                }
                                                cscVar = new csc(i2, i, i5);
                                                dlaVar2.s = cscVar;
                                            } else {
                                                if (str4.equals("sesame")) {
                                                    c9 = 1;
                                                    if (c9 == 0) {
                                                    }
                                                    cscVar = new csc(i2, i, i5);
                                                    dlaVar2.s = cscVar;
                                                }
                                                c9 = 65535;
                                                if (c9 == 0) {
                                                }
                                                cscVar = new csc(i2, i, i5);
                                                dlaVar2.s = cscVar;
                                            }
                                        }
                                        i = 0;
                                        i2 = -1;
                                        cscVar = new csc(i2, i, i5);
                                        dlaVar2.s = cscVar;
                                    }
                                }
                                c8 = 65535;
                                if (c8 == 0) {
                                }
                                zzb = zzgbq.zzb(csc.f13418c, zzm);
                                if (zzb.isEmpty()) {
                                }
                            } else {
                                if (str.equals("outside")) {
                                    c8 = 1;
                                    if (c8 == 0) {
                                    }
                                    zzb = zzgbq.zzb(csc.f13418c, zzm);
                                    if (zzb.isEmpty()) {
                                    }
                                }
                                c8 = 65535;
                                if (c8 == 0) {
                                }
                                zzb = zzgbq.zzb(csc.f13418c, zzm);
                                if (zzb.isEmpty()) {
                                }
                            }
                        }
                    }
                    cscVar = null;
                    dlaVar2.s = cscVar;
                    break;
                case 14:
                    dla m = m(dlaVar2);
                    Matcher matcher2 = f4249c.matcher(attributeValue);
                    float f2 = Float.MAX_VALUE;
                    if (matcher2.matches()) {
                        try {
                            String group3 = matcher2.group(1);
                            if (group3 == null) {
                                throw null;
                                break;
                            } else {
                                f2 = Math.min(100.0f, Math.max(-100.0f, Float.parseFloat(group3)));
                            }
                        } catch (NumberFormatException e2) {
                            zzdt.zzg("TtmlParser", "Failed to parse shear: ".concat(String.valueOf(attributeValue)), e2);
                        }
                    } else {
                        dub.a(attributeValue, "Invalid value for shear: ", "TtmlParser");
                    }
                    m.j = f2;
                    dlaVar2 = m;
                    break;
            }
        }
        return dlaVar2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ca, code lost:
    
        if (r13.equals("s") != false) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static long k(String str, gvt gvtVar) {
        double d2;
        double d3;
        Matcher matcher = f4252f.matcher(str);
        char c2 = 2;
        if (matcher.matches()) {
            String group = matcher.group(1);
            group.getClass();
            long parseLong = Long.parseLong(group) * 3600;
            String group2 = matcher.group(2);
            group2.getClass();
            long parseLong2 = Long.parseLong(group2) * 60;
            String group3 = matcher.group(3);
            group3.getClass();
            double d4 = parseLong + parseLong2;
            double parseLong3 = Long.parseLong(group3);
            String group4 = matcher.group(4);
            double parseDouble = group4 != null ? Double.parseDouble(group4) : 0.0d;
            double d5 = d4 + parseLong3;
            return (long) ((d5 + parseDouble + (matcher.group(5) != null ? Long.parseLong(r13) / gvtVar.f18837a : 0.0d) + (matcher.group(6) != null ? (Long.parseLong(r13) / gvtVar.f18838b) / gvtVar.f18837a : 0.0d)) * 1000000.0d);
        }
        Matcher matcher2 = f4253g.matcher(str);
        if (!matcher2.matches()) {
            throw new zzake("Malformed time expression: ".concat(String.valueOf(str)));
        }
        String group5 = matcher2.group(1);
        group5.getClass();
        double parseDouble2 = Double.parseDouble(group5);
        String group6 = matcher2.group(2);
        group6.getClass();
        int hashCode = group6.hashCode();
        if (hashCode == 102) {
            if (group6.equals("f")) {
                c2 = 4;
            }
            c2 = 65535;
        } else if (hashCode == 104) {
            if (group6.equals("h")) {
                c2 = 0;
            }
            c2 = 65535;
        } else if (hashCode == 109) {
            if (group6.equals("m")) {
                c2 = 1;
            }
            c2 = 65535;
        } else if (hashCode == 3494) {
            if (group6.equals("ms")) {
                c2 = 3;
            }
            c2 = 65535;
        } else if (hashCode != 115) {
            if (hashCode == 116 && group6.equals("t")) {
                c2 = 5;
            }
            c2 = 65535;
        }
        if (c2 == 0) {
            d2 = 3600.0d;
        } else {
            if (c2 != 1) {
                if (c2 == 3) {
                    d3 = 1000.0d;
                } else {
                    if (c2 != 4) {
                        if (c2 == 5) {
                            d3 = gvtVar.f18839c;
                        }
                        return (long) (parseDouble2 * 1000000.0d);
                    }
                    d3 = gvtVar.f18837a;
                }
                parseDouble2 /= d3;
                return (long) (parseDouble2 * 1000000.0d);
            }
            d2 = 60.0d;
        }
        parseDouble2 *= d2;
        return (long) (parseDouble2 * 1000000.0d);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static Layout.Alignment l(String str) {
        char c2;
        String zza = zzfwa.zza(str);
        switch (zza.hashCode()) {
            case -1364013995:
                if (zza.equals("center")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 100571:
                if (zza.equals("end")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 3317767:
                if (zza.equals("left")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 108511772:
                if (zza.equals("right")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 109757538:
                if (zza.equals("start")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0 || c2 == 1) {
            return Layout.Alignment.ALIGN_NORMAL;
        }
        if (c2 == 2 || c2 == 3) {
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        if (c2 != 4) {
            return null;
        }
        return Layout.Alignment.ALIGN_CENTER;
    }

    public static dla m(dla dlaVar) {
        return dlaVar == null ? new dla() : dlaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    public final void zza(byte[] bArr, int i, int i2, zzakh zzakhVar, zzdg zzdgVar) {
        zzakc.zza(zzb(bArr, i, i2), zzakhVar, zzdgVar);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:251|(3:252|253|254)|(6:256|257|258|(2:262|(2:264|(4:266|(7:268|(3:270|(3:282|283|(3:285|286|287))|272)(3:292|(3:294|286|287)|272)|277|278|279|280|76)(4:295|(1:297)(1:301)|298|(1:300))|273|274)(4:302|303|304|305))(2:306|307))(2:308|309)|275|281)|331|332|(3:334|(4:336|(1:338)(1:365)|339|(1:341)(1:342))|366)(1:367)|343|(2:345|(1:347)(2:(2:360|(1:362))|363))(1:364)|348|349|350|351|(3:353|(1:355)|356)) */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x06fe, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:162:0x045e  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0483 A[Catch: IOException -> 0x0090, XmlPullParserException -> 0x0093, TRY_LEAVE, TryCatch #16 {IOException -> 0x0090, XmlPullParserException -> 0x0093, blocks: (B:3:0x0006, B:7:0x0058, B:9:0x0067, B:12:0x0073, B:15:0x0083, B:17:0x008b, B:18:0x0098, B:21:0x00a4, B:24:0x00b6, B:25:0x00cf, B:27:0x00db, B:28:0x00df, B:30:0x00eb, B:32:0x00f5, B:37:0x0196, B:42:0x01f0, B:45:0x0200, B:47:0x0206, B:49:0x020e, B:51:0x0216, B:53:0x021e, B:55:0x0226, B:57:0x022e, B:59:0x0234, B:61:0x023c, B:63:0x0244, B:65:0x024a, B:67:0x0250, B:69:0x0256, B:71:0x025e, B:74:0x0267, B:76:0x0793, B:77:0x028f, B:80:0x0297, B:82:0x02a0, B:84:0x02b1, B:86:0x02bb, B:87:0x02ca, B:89:0x02d0, B:91:0x02e4, B:93:0x02ea, B:96:0x051e, B:103:0x02c1, B:105:0x02f7, B:108:0x0305, B:110:0x030b, B:112:0x0314, B:114:0x031a, B:115:0x0321, B:120:0x0328, B:124:0x0517, B:125:0x0338, B:127:0x0340, B:132:0x035d, B:134:0x0363, B:136:0x0370, B:138:0x03ba, B:140:0x03c0, B:145:0x03d1, B:147:0x03d7, B:149:0x03e4, B:151:0x042c, B:153:0x0434, B:166:0x0479, B:168:0x0483, B:184:0x04c9, B:202:0x03ef, B:205:0x03f0, B:206:0x03f1, B:208:0x03f9, B:211:0x0401, B:214:0x040b, B:216:0x0411, B:218:0x041c, B:221:0x04d5, B:223:0x04d6, B:224:0x04d7, B:225:0x04e0, B:226:0x04eb, B:228:0x0379, B:230:0x037a, B:231:0x037b, B:232:0x0386, B:235:0x0390, B:238:0x0399, B:240:0x039f, B:242:0x03aa, B:245:0x04f2, B:247:0x04f3, B:248:0x04f4, B:249:0x04fd, B:250:0x0508, B:253:0x0548, B:257:0x056a, B:275:0x0675, B:283:0x05db, B:285:0x05e3, B:279:0x0708, B:292:0x0600, B:295:0x060a, B:297:0x0615, B:298:0x0630, B:301:0x0621, B:304:0x0647, B:306:0x0651, B:308:0x0663, B:334:0x0692, B:338:0x069e, B:341:0x06a7, B:347:0x06ba, B:348:0x06cc, B:351:0x06dc, B:353:0x06e1, B:355:0x06e5, B:356:0x06ec, B:360:0x06bf, B:371:0x019f, B:373:0x01a9, B:376:0x01b4, B:378:0x01ba, B:380:0x01c5, B:382:0x01d0, B:384:0x01d1, B:385:0x01d2, B:386:0x0111, B:389:0x0121, B:392:0x012a, B:394:0x0130, B:397:0x0137, B:399:0x013d, B:404:0x0153, B:407:0x015a, B:409:0x018d, B:416:0x017e, B:421:0x018c, B:432:0x072d, B:434:0x0739, B:435:0x0740, B:442:0x0749, B:445:0x074d, B:447:0x0757, B:449:0x0761, B:450:0x076d, B:453:0x0768, B:457:0x0785, B:462:0x078d, B:468:0x07ae), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x04bb  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x046d  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x053e  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x019f A[Catch: IOException -> 0x0090, XmlPullParserException -> 0x0093, TryCatch #16 {IOException -> 0x0090, XmlPullParserException -> 0x0093, blocks: (B:3:0x0006, B:7:0x0058, B:9:0x0067, B:12:0x0073, B:15:0x0083, B:17:0x008b, B:18:0x0098, B:21:0x00a4, B:24:0x00b6, B:25:0x00cf, B:27:0x00db, B:28:0x00df, B:30:0x00eb, B:32:0x00f5, B:37:0x0196, B:42:0x01f0, B:45:0x0200, B:47:0x0206, B:49:0x020e, B:51:0x0216, B:53:0x021e, B:55:0x0226, B:57:0x022e, B:59:0x0234, B:61:0x023c, B:63:0x0244, B:65:0x024a, B:67:0x0250, B:69:0x0256, B:71:0x025e, B:74:0x0267, B:76:0x0793, B:77:0x028f, B:80:0x0297, B:82:0x02a0, B:84:0x02b1, B:86:0x02bb, B:87:0x02ca, B:89:0x02d0, B:91:0x02e4, B:93:0x02ea, B:96:0x051e, B:103:0x02c1, B:105:0x02f7, B:108:0x0305, B:110:0x030b, B:112:0x0314, B:114:0x031a, B:115:0x0321, B:120:0x0328, B:124:0x0517, B:125:0x0338, B:127:0x0340, B:132:0x035d, B:134:0x0363, B:136:0x0370, B:138:0x03ba, B:140:0x03c0, B:145:0x03d1, B:147:0x03d7, B:149:0x03e4, B:151:0x042c, B:153:0x0434, B:166:0x0479, B:168:0x0483, B:184:0x04c9, B:202:0x03ef, B:205:0x03f0, B:206:0x03f1, B:208:0x03f9, B:211:0x0401, B:214:0x040b, B:216:0x0411, B:218:0x041c, B:221:0x04d5, B:223:0x04d6, B:224:0x04d7, B:225:0x04e0, B:226:0x04eb, B:228:0x0379, B:230:0x037a, B:231:0x037b, B:232:0x0386, B:235:0x0390, B:238:0x0399, B:240:0x039f, B:242:0x03aa, B:245:0x04f2, B:247:0x04f3, B:248:0x04f4, B:249:0x04fd, B:250:0x0508, B:253:0x0548, B:257:0x056a, B:275:0x0675, B:283:0x05db, B:285:0x05e3, B:279:0x0708, B:292:0x0600, B:295:0x060a, B:297:0x0615, B:298:0x0630, B:301:0x0621, B:304:0x0647, B:306:0x0651, B:308:0x0663, B:334:0x0692, B:338:0x069e, B:341:0x06a7, B:347:0x06ba, B:348:0x06cc, B:351:0x06dc, B:353:0x06e1, B:355:0x06e5, B:356:0x06ec, B:360:0x06bf, B:371:0x019f, B:373:0x01a9, B:376:0x01b4, B:378:0x01ba, B:380:0x01c5, B:382:0x01d0, B:384:0x01d1, B:385:0x01d2, B:386:0x0111, B:389:0x0121, B:392:0x012a, B:394:0x0130, B:397:0x0137, B:399:0x013d, B:404:0x0153, B:407:0x015a, B:409:0x018d, B:416:0x017e, B:421:0x018c, B:432:0x072d, B:434:0x0739, B:435:0x0740, B:442:0x0749, B:445:0x074d, B:447:0x0757, B:449:0x0761, B:450:0x076d, B:453:0x0768, B:457:0x0785, B:462:0x078d, B:468:0x07ae), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0297 A[Catch: IOException -> 0x0090, XmlPullParserException -> 0x0093, LOOP:1: B:80:0x0297->B:98:0x052c, LOOP_START, PHI: r1 r5 r6 r11 r14 r15 r30
      0x0297: PHI (r1v62 java.lang.String) = (r1v20 java.lang.String), (r1v80 java.lang.String) binds: [B:79:0x0295, B:98:0x052c] A[DONT_GENERATE, DONT_INLINE]
      0x0297: PHI (r5v10 java.util.HashMap) = (r5v1 java.util.HashMap), (r5v34 java.util.HashMap) binds: [B:79:0x0295, B:98:0x052c] A[DONT_GENERATE, DONT_INLINE]
      0x0297: PHI (r6v30 java.lang.String) = (r6v8 java.lang.String), (r6v44 java.lang.String) binds: [B:79:0x0295, B:98:0x052c] A[DONT_GENERATE, DONT_INLINE]
      0x0297: PHI (r11v11 java.lang.String) = (r11v3 java.lang.String), (r11v18 java.lang.String) binds: [B:79:0x0295, B:98:0x052c] A[DONT_GENERATE, DONT_INLINE]
      0x0297: PHI (r14v15 java.lang.String) = (r14v9 java.lang.String), (r14v31 java.lang.String) binds: [B:79:0x0295, B:98:0x052c] A[DONT_GENERATE, DONT_INLINE]
      0x0297: PHI (r15v12 g.gvt) = (r15v4 g.gvt), (r15v20 g.gvt) binds: [B:79:0x0295, B:98:0x052c] A[DONT_GENERATE, DONT_INLINE]
      0x0297: PHI (r30v2 java.util.HashMap) = (r30v1 java.util.HashMap), (r30v3 java.util.HashMap) binds: [B:79:0x0295, B:98:0x052c] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #16 {IOException -> 0x0090, XmlPullParserException -> 0x0093, blocks: (B:3:0x0006, B:7:0x0058, B:9:0x0067, B:12:0x0073, B:15:0x0083, B:17:0x008b, B:18:0x0098, B:21:0x00a4, B:24:0x00b6, B:25:0x00cf, B:27:0x00db, B:28:0x00df, B:30:0x00eb, B:32:0x00f5, B:37:0x0196, B:42:0x01f0, B:45:0x0200, B:47:0x0206, B:49:0x020e, B:51:0x0216, B:53:0x021e, B:55:0x0226, B:57:0x022e, B:59:0x0234, B:61:0x023c, B:63:0x0244, B:65:0x024a, B:67:0x0250, B:69:0x0256, B:71:0x025e, B:74:0x0267, B:76:0x0793, B:77:0x028f, B:80:0x0297, B:82:0x02a0, B:84:0x02b1, B:86:0x02bb, B:87:0x02ca, B:89:0x02d0, B:91:0x02e4, B:93:0x02ea, B:96:0x051e, B:103:0x02c1, B:105:0x02f7, B:108:0x0305, B:110:0x030b, B:112:0x0314, B:114:0x031a, B:115:0x0321, B:120:0x0328, B:124:0x0517, B:125:0x0338, B:127:0x0340, B:132:0x035d, B:134:0x0363, B:136:0x0370, B:138:0x03ba, B:140:0x03c0, B:145:0x03d1, B:147:0x03d7, B:149:0x03e4, B:151:0x042c, B:153:0x0434, B:166:0x0479, B:168:0x0483, B:184:0x04c9, B:202:0x03ef, B:205:0x03f0, B:206:0x03f1, B:208:0x03f9, B:211:0x0401, B:214:0x040b, B:216:0x0411, B:218:0x041c, B:221:0x04d5, B:223:0x04d6, B:224:0x04d7, B:225:0x04e0, B:226:0x04eb, B:228:0x0379, B:230:0x037a, B:231:0x037b, B:232:0x0386, B:235:0x0390, B:238:0x0399, B:240:0x039f, B:242:0x03aa, B:245:0x04f2, B:247:0x04f3, B:248:0x04f4, B:249:0x04fd, B:250:0x0508, B:253:0x0548, B:257:0x056a, B:275:0x0675, B:283:0x05db, B:285:0x05e3, B:279:0x0708, B:292:0x0600, B:295:0x060a, B:297:0x0615, B:298:0x0630, B:301:0x0621, B:304:0x0647, B:306:0x0651, B:308:0x0663, B:334:0x0692, B:338:0x069e, B:341:0x06a7, B:347:0x06ba, B:348:0x06cc, B:351:0x06dc, B:353:0x06e1, B:355:0x06e5, B:356:0x06ec, B:360:0x06bf, B:371:0x019f, B:373:0x01a9, B:376:0x01b4, B:378:0x01ba, B:380:0x01c5, B:382:0x01d0, B:384:0x01d1, B:385:0x01d2, B:386:0x0111, B:389:0x0121, B:392:0x012a, B:394:0x0130, B:397:0x0137, B:399:0x013d, B:404:0x0153, B:407:0x015a, B:409:0x018d, B:416:0x017e, B:421:0x018c, B:432:0x072d, B:434:0x0739, B:435:0x0740, B:442:0x0749, B:445:0x074d, B:447:0x0757, B:449:0x0761, B:450:0x076d, B:453:0x0768, B:457:0x0785, B:462:0x078d, B:468:0x07ae), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x052c A[LOOP:1: B:80:0x0297->B:98:0x052c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0524 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r48v1, types: [g.dla, java.lang.Throwable] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzakd zzb(byte[] bArr, int i, int i2) {
        String str;
        String str2;
        HashMap hashMap;
        HashMap hashMap2;
        ArrayDeque arrayDeque;
        gvt gvtVar;
        fzn fznVar;
        int i3;
        HashMap hashMap3;
        aem aemVar;
        ArrayDeque arrayDeque2;
        int i4;
        aot aotVar;
        int i5;
        boolean equals;
        HashMap hashMap4;
        gvt gvtVar2;
        int attributeCount;
        dla j;
        String str3;
        int i6;
        long j2;
        long j3;
        String[] strArr;
        String str4;
        long j4;
        aem aemVar2;
        aem aemVar3;
        long j5;
        String attributeValue;
        Object obj;
        char c2;
        String str5;
        String[] split;
        String str6;
        String str7;
        gvt gvtVar3;
        String str8;
        String str9;
        asr asrVar;
        float f2;
        float parseInt;
        float f3;
        float parseInt2;
        float f4;
        int i7;
        String zza;
        int i8;
        char c3;
        char c4;
        String zza2;
        String[] split2;
        float f5;
        gvt gvtVar4;
        String group;
        String group2;
        int i9;
        boolean z;
        StringBuilder sb;
        String zza3;
        String group3;
        String str10 = "";
        String str11 = "http://www.w3.org/ns/ttml#parameter";
        try {
            XmlPullParser newPullParser = this.i.newPullParser();
            HashMap hashMap5 = new HashMap();
            HashMap hashMap6 = new HashMap();
            HashMap hashMap7 = new HashMap();
            hashMap6.put("", new asr("", -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE));
            Object obj2 = null;
            newPullParser.setInput(new ByteArrayInputStream(bArr, i, i2), null);
            ArrayDeque arrayDeque3 = new ArrayDeque();
            int eventType = newPullParser.getEventType();
            gvt gvtVar5 = f4251e;
            fzn fznVar2 = null;
            aot aotVar2 = null;
            gvt gvtVar6 = gvtVar5;
            int i10 = 0;
            int i11 = 15;
            while (eventType != 1) {
                ?? r48 = obj2;
                aem aemVar4 = (aem) arrayDeque3.peek();
                if (i10 == 0) {
                    String name = newPullParser.getName();
                    str = str10;
                    if (eventType == 2) {
                        boolean equals2 = "tt".equals(name);
                        Pattern pattern = h;
                        fzn fznVar3 = fznVar2;
                        if (equals2) {
                            String attributeValue2 = newPullParser.getAttributeValue(str11, "frameRate");
                            int parseInt3 = attributeValue2 != null ? Integer.parseInt(attributeValue2) : 30;
                            String attributeValue3 = newPullParser.getAttributeValue(str11, "frameRateMultiplier");
                            i4 = i10;
                            if (attributeValue3 != null) {
                                int i12 = zzen.zza;
                                arrayDeque2 = arrayDeque3;
                                zzdb.zze(attributeValue3.split(" ", -1).length == 2, "frameRateMultiplier doesn't have 2 parts");
                                f5 = Integer.parseInt(r15[0]) / Integer.parseInt(r15[1]);
                            } else {
                                arrayDeque2 = arrayDeque3;
                                f5 = 1.0f;
                            }
                            int i13 = gvtVar5.f18838b;
                            float f6 = f5;
                            String attributeValue4 = newPullParser.getAttributeValue(str11, "subFrameRate");
                            if (attributeValue4 != null) {
                                i13 = Integer.parseInt(attributeValue4);
                            }
                            int i14 = gvtVar5.f18839c;
                            String attributeValue5 = newPullParser.getAttributeValue(str11, "tickRate");
                            gvtVar = gvtVar5;
                            gvt gvtVar7 = new gvt(i13, parseInt3 * f6, attributeValue5 != null ? Integer.parseInt(attributeValue5) : i14);
                            String attributeValue6 = newPullParser.getAttributeValue(str11, "cellResolution");
                            if (attributeValue6 == null) {
                                str2 = str11;
                            } else {
                                Matcher matcher = f4247a.matcher(attributeValue6);
                                str2 = str11;
                                if (matcher.matches()) {
                                    try {
                                        group = matcher.group(1);
                                    } catch (NumberFormatException unused) {
                                        hashMap3 = hashMap6;
                                        aemVar = aemVar4;
                                        gvtVar4 = gvtVar7;
                                    }
                                    if (group == null) {
                                        throw r48;
                                    }
                                    int parseInt4 = Integer.parseInt(group);
                                    gvtVar4 = gvtVar7;
                                    try {
                                        group2 = matcher.group(2);
                                    } catch (NumberFormatException unused2) {
                                        hashMap3 = hashMap6;
                                        aemVar = aemVar4;
                                    }
                                    if (group2 == null) {
                                        throw r48;
                                    }
                                    int parseInt5 = Integer.parseInt(group2);
                                    if (parseInt4 == 0) {
                                        aemVar = aemVar4;
                                        i9 = parseInt5;
                                        z = false;
                                    } else if (parseInt5 != 0) {
                                        aemVar = aemVar4;
                                        i9 = parseInt5;
                                        z = true;
                                    } else {
                                        aemVar = aemVar4;
                                        z = false;
                                        i9 = 0;
                                    }
                                    try {
                                        sb = new StringBuilder();
                                        hashMap3 = hashMap6;
                                    } catch (NumberFormatException unused3) {
                                        hashMap3 = hashMap6;
                                    }
                                    try {
                                        sb.append("Invalid cell resolution ");
                                        sb.append(parseInt4);
                                        sb.append(" ");
                                        sb.append(i9);
                                        zzdb.zze(z, sb.toString());
                                        i11 = i9;
                                    } catch (NumberFormatException unused4) {
                                        zzdt.zzf("TtmlParser", "Ignoring malformed cell resolution: ".concat(attributeValue6));
                                        i11 = 15;
                                        zza3 = zzeo.zza(newPullParser, "extent");
                                        if (zza3 != null) {
                                        }
                                        aotVar = r48;
                                        gvtVar6 = gvtVar4;
                                        i5 = i11;
                                        String str12 = "image";
                                        String str13 = "metadata";
                                        String str14 = "style";
                                        if (!name.equals("tt")) {
                                            zzdt.zze("TtmlParser", "Ignoring unsupported tag: " + newPullParser.getName());
                                            i11 = i5;
                                            hashMap = hashMap5;
                                            aotVar2 = aotVar;
                                            fznVar2 = fznVar3;
                                            arrayDeque = arrayDeque2;
                                            hashMap2 = hashMap3;
                                            i10 = 1;
                                            newPullParser.next();
                                            eventType = newPullParser.getEventType();
                                            arrayDeque3 = arrayDeque;
                                            gvtVar5 = gvtVar;
                                            str11 = str2;
                                            obj2 = null;
                                            hashMap6 = hashMap2;
                                            hashMap5 = hashMap;
                                            str10 = str;
                                        }
                                        equals = "head".equals(name);
                                        String str15 = "\\s+";
                                        if (equals) {
                                        }
                                        gvtVar6 = gvtVar2;
                                        i11 = i5;
                                        aotVar2 = aotVar;
                                        fznVar2 = fznVar3;
                                        i10 = i4;
                                        hashMap = hashMap4;
                                        newPullParser.next();
                                        eventType = newPullParser.getEventType();
                                        arrayDeque3 = arrayDeque;
                                        gvtVar5 = gvtVar;
                                        str11 = str2;
                                        obj2 = null;
                                        hashMap6 = hashMap2;
                                        hashMap5 = hashMap;
                                        str10 = str;
                                    }
                                    zza3 = zzeo.zza(newPullParser, "extent");
                                    if (zza3 != null) {
                                        Matcher matcher2 = pattern.matcher(zza3);
                                        if (matcher2.matches()) {
                                            try {
                                                group3 = matcher2.group(1);
                                            } catch (NumberFormatException unused5) {
                                                zzdt.zzf("TtmlParser", "Ignoring malformed tts extent: ".concat(zza3));
                                            }
                                            if (group3 == null) {
                                                throw r48;
                                            }
                                            int parseInt6 = Integer.parseInt(group3);
                                            String group4 = matcher2.group(2);
                                            if (group4 == null) {
                                                throw r48;
                                            }
                                            aotVar = new aot(parseInt6, Integer.parseInt(group4), 5);
                                            gvtVar6 = gvtVar4;
                                        } else {
                                            zzdt.zzf("TtmlParser", "Ignoring non-pixel tts extent: ".concat(zza3));
                                        }
                                    }
                                    aotVar = r48;
                                    gvtVar6 = gvtVar4;
                                } else {
                                    zzdt.zzf("TtmlParser", "Ignoring malformed cell resolution: ".concat(attributeValue6));
                                }
                            }
                            hashMap3 = hashMap6;
                            aemVar = aemVar4;
                            gvtVar4 = gvtVar7;
                            i11 = 15;
                            zza3 = zzeo.zza(newPullParser, "extent");
                            if (zza3 != null) {
                            }
                            aotVar = r48;
                            gvtVar6 = gvtVar4;
                        } else {
                            str2 = str11;
                            hashMap3 = hashMap6;
                            aemVar = aemVar4;
                            arrayDeque2 = arrayDeque3;
                            gvtVar = gvtVar5;
                            i4 = i10;
                            aotVar = aotVar2;
                        }
                        i5 = i11;
                        String str122 = "image";
                        String str132 = "metadata";
                        String str142 = "style";
                        if (!name.equals("tt") && !name.equals("head") && !name.equals("body") && !name.equals("div") && !name.equals("p") && !name.equals("span") && !name.equals("br") && !name.equals("style") && !name.equals("styling") && !name.equals("layout") && !name.equals("region") && !name.equals("metadata") && !name.equals("image") && !name.equals("data") && !name.equals("information")) {
                            zzdt.zze("TtmlParser", "Ignoring unsupported tag: " + newPullParser.getName());
                            i11 = i5;
                            hashMap = hashMap5;
                            aotVar2 = aotVar;
                            fznVar2 = fznVar3;
                            arrayDeque = arrayDeque2;
                            hashMap2 = hashMap3;
                            i10 = 1;
                            newPullParser.next();
                            eventType = newPullParser.getEventType();
                            arrayDeque3 = arrayDeque;
                            gvtVar5 = gvtVar;
                            str11 = str2;
                            obj2 = null;
                            hashMap6 = hashMap2;
                            hashMap5 = hashMap;
                            str10 = str;
                        }
                        equals = "head".equals(name);
                        String str152 = "\\s+";
                        if (equals) {
                            hashMap4 = hashMap5;
                            String str16 = "\\s+";
                            Object obj3 = "style";
                            gvt gvtVar8 = gvtVar6;
                            hashMap2 = hashMap3;
                            try {
                                attributeCount = newPullParser.getAttributeCount();
                                j = j(newPullParser, r48);
                                str3 = str;
                                i6 = 0;
                                j2 = -9223372036854775807L;
                                j3 = -9223372036854775807L;
                                strArr = null;
                                str4 = null;
                                j4 = -9223372036854775807L;
                            } catch (zzake e2) {
                                e = e2;
                                gvtVar2 = gvtVar8;
                                arrayDeque = arrayDeque2;
                            }
                            while (i6 < attributeCount) {
                                try {
                                    String attributeName = newPullParser.getAttributeName(i6);
                                    attributeValue = newPullParser.getAttributeValue(i6);
                                    switch (attributeName.hashCode()) {
                                        case -934795532:
                                            obj = obj3;
                                            if (attributeName.equals("region")) {
                                                c2 = 4;
                                                break;
                                            }
                                            c2 = 65535;
                                            break;
                                        case 99841:
                                            obj = obj3;
                                            if (attributeName.equals("dur")) {
                                                c2 = 2;
                                                break;
                                            }
                                            c2 = 65535;
                                            break;
                                        case 100571:
                                            obj = obj3;
                                            if (attributeName.equals("end")) {
                                                c2 = 1;
                                                break;
                                            }
                                            c2 = 65535;
                                            break;
                                        case 93616297:
                                            obj = obj3;
                                            if (attributeName.equals("begin")) {
                                                c2 = 0;
                                                break;
                                            }
                                            c2 = 65535;
                                            break;
                                        case 109780401:
                                            obj = obj3;
                                            if (attributeName.equals(obj)) {
                                                c2 = 3;
                                                break;
                                            }
                                            c2 = 65535;
                                            break;
                                        case 1292595405:
                                            if (attributeName.equals("backgroundImage")) {
                                                obj = obj3;
                                                c2 = 5;
                                                break;
                                            }
                                        default:
                                            obj = obj3;
                                            c2 = 65535;
                                            break;
                                    }
                                } catch (zzake e3) {
                                    e = e3;
                                    gvtVar2 = gvtVar8;
                                }
                                if (c2 == 0) {
                                    gvtVar2 = gvtVar8;
                                    str5 = str16;
                                    j3 = k(attributeValue, gvtVar2);
                                } else if (c2 == 1) {
                                    gvtVar2 = gvtVar8;
                                    str5 = str16;
                                    j2 = k(attributeValue, gvtVar2);
                                } else if (c2 != 2) {
                                    if (c2 != 3) {
                                        if (c2 != 4) {
                                            if (c2 == 5) {
                                                try {
                                                    if (attributeValue.startsWith("#")) {
                                                        str4 = attributeValue.substring(1);
                                                        gvtVar2 = gvtVar8;
                                                        str5 = str16;
                                                    }
                                                } catch (zzake e4) {
                                                    e = e4;
                                                    gvtVar2 = gvtVar8;
                                                    arrayDeque = arrayDeque2;
                                                    zzdt.zzg("TtmlParser", "Suppressing parser error", e);
                                                    gvtVar6 = gvtVar2;
                                                    i11 = i5;
                                                    aotVar2 = aotVar;
                                                    fznVar2 = fznVar3;
                                                    hashMap = hashMap4;
                                                    i10 = 1;
                                                    newPullParser.next();
                                                    eventType = newPullParser.getEventType();
                                                    arrayDeque3 = arrayDeque;
                                                    gvtVar5 = gvtVar;
                                                    str11 = str2;
                                                    obj2 = null;
                                                    hashMap6 = hashMap2;
                                                    hashMap5 = hashMap;
                                                    str10 = str;
                                                }
                                            }
                                            str5 = str16;
                                        } else {
                                            if (hashMap2.containsKey(attributeValue)) {
                                                str3 = attributeValue;
                                                gvtVar2 = gvtVar8;
                                                str5 = str16;
                                            }
                                            str5 = str16;
                                        }
                                        e = e;
                                        arrayDeque = arrayDeque2;
                                        zzdt.zzg("TtmlParser", "Suppressing parser error", e);
                                        gvtVar6 = gvtVar2;
                                        i11 = i5;
                                        aotVar2 = aotVar;
                                        fznVar2 = fznVar3;
                                        hashMap = hashMap4;
                                        i10 = 1;
                                        newPullParser.next();
                                        eventType = newPullParser.getEventType();
                                        arrayDeque3 = arrayDeque;
                                        gvtVar5 = gvtVar;
                                        str11 = str2;
                                        obj2 = null;
                                        hashMap6 = hashMap2;
                                        hashMap5 = hashMap;
                                        str10 = str;
                                    } else {
                                        String trim = attributeValue.trim();
                                        if (trim.isEmpty()) {
                                            split = new String[0];
                                            str5 = str16;
                                        } else {
                                            int i15 = zzen.zza;
                                            str5 = str16;
                                            split = trim.split(str5, -1);
                                        }
                                        if (split.length > 0) {
                                            strArr = split;
                                        }
                                    }
                                    gvtVar2 = gvtVar8;
                                } else {
                                    gvtVar2 = gvtVar8;
                                    str5 = str16;
                                    try {
                                        j4 = k(attributeValue, gvtVar2);
                                    } catch (zzake e5) {
                                        e = e5;
                                    }
                                }
                                i6++;
                                gvtVar8 = gvtVar2;
                                obj3 = obj;
                                str16 = str5;
                            }
                            gvtVar2 = gvtVar8;
                            if (aemVar != null) {
                                aemVar2 = aemVar;
                                long j6 = aemVar2.f10100c;
                                if (j6 != -9223372036854775807L) {
                                    j3 = j3 != -9223372036854775807L ? j3 + j6 : -9223372036854775807L;
                                    if (j2 != -9223372036854775807L) {
                                        j2 += j6;
                                    } else {
                                        aemVar3 = aemVar2;
                                        j2 = -9223372036854775807L;
                                    }
                                }
                                aemVar3 = aemVar2;
                            } else {
                                aemVar2 = aemVar;
                                aemVar3 = null;
                            }
                            if (j2 != -9223372036854775807L) {
                                j5 = j2;
                            } else if (j4 != -9223372036854775807L) {
                                j5 = j3 + j4;
                            } else {
                                if (aemVar3 != null) {
                                    long j7 = aemVar3.f10102e;
                                    if (j7 != -9223372036854775807L) {
                                        j5 = j7;
                                    }
                                }
                                j5 = -9223372036854775807L;
                            }
                            aem o = aem.o(newPullParser.getName(), j3, j5, j, strArr, str3, str4, aemVar3);
                            arrayDeque = arrayDeque2;
                            arrayDeque.push(o);
                            if (aemVar2 != null) {
                                if (aemVar2.h == null) {
                                    aemVar2.h = new ArrayList();
                                }
                                aemVar2.h.add(o);
                            }
                        } else {
                            while (true) {
                                newPullParser.next();
                                if (zzeo.zzc(newPullParser, str142)) {
                                    String zza4 = zzeo.zza(newPullParser, str142);
                                    gvtVar3 = gvtVar6;
                                    dla j8 = j(newPullParser, new dla());
                                    if (zza4 != null) {
                                        String trim2 = zza4.trim();
                                        if (trim2.isEmpty()) {
                                            str7 = str142;
                                            split2 = new String[0];
                                        } else {
                                            str7 = str142;
                                            int i16 = zzen.zza;
                                            split2 = trim2.split(str152, -1);
                                        }
                                        int length = split2.length;
                                        str6 = str152;
                                        int i17 = 0;
                                        while (i17 < length) {
                                            int i18 = i17;
                                            j8.u((dla) hashMap5.get(split2[i18]));
                                            i17 = i18 + 1;
                                        }
                                    } else {
                                        str6 = str152;
                                        str7 = str142;
                                    }
                                    String t = j8.t();
                                    if (t != null) {
                                        hashMap5.put(t, j8);
                                    }
                                } else {
                                    str6 = str152;
                                    str7 = str142;
                                    gvtVar3 = gvtVar6;
                                    if (zzeo.zzc(newPullParser, "region")) {
                                        String zza5 = zzeo.zza(newPullParser, TTDownloadField.TT_ID);
                                        if (zza5 == null) {
                                            asrVar = r48;
                                            str8 = str122;
                                            hashMap4 = hashMap5;
                                            str9 = str132;
                                        } else {
                                            String zza6 = zzeo.zza(newPullParser, LiveConfigKey.ORIGIN);
                                            if (zza6 != null) {
                                                Pattern pattern2 = f4250d;
                                                Matcher matcher3 = pattern2.matcher(zza6);
                                                Matcher matcher4 = pattern.matcher(zza6);
                                                str8 = str122;
                                                str9 = str132;
                                                if (matcher3.matches()) {
                                                    hashMap4 = hashMap5;
                                                    try {
                                                        String group5 = matcher3.group(1);
                                                        if (group5 == null) {
                                                            throw r48;
                                                        }
                                                        f2 = Float.parseFloat(group5) / 100.0f;
                                                        String group6 = matcher3.group(2);
                                                        if (group6 == null) {
                                                            throw r48;
                                                        }
                                                        parseInt = Float.parseFloat(group6) / 100.0f;
                                                    } catch (NumberFormatException unused6) {
                                                        zzdt.zzf("TtmlParser", "Ignoring region with malformed origin: ".concat(zza6));
                                                    }
                                                } else {
                                                    hashMap4 = hashMap5;
                                                    if (!matcher4.matches()) {
                                                        zzdt.zzf("TtmlParser", "Ignoring region with unsupported origin: ".concat(zza6));
                                                    } else if (aotVar == null) {
                                                        zzdt.zzf("TtmlParser", "Ignoring region with missing tts:extent: ".concat(zza6));
                                                    } else {
                                                        try {
                                                            String group7 = matcher4.group(1);
                                                            if (group7 == null) {
                                                                throw r48;
                                                            }
                                                            int parseInt7 = Integer.parseInt(group7);
                                                            String group8 = matcher4.group(2);
                                                            if (group8 == null) {
                                                                throw r48;
                                                            }
                                                            f2 = parseInt7 / aotVar.f10586b;
                                                            parseInt = Integer.parseInt(group8) / aotVar.f10587c;
                                                        } catch (NumberFormatException unused7) {
                                                            zzdt.zzf("TtmlParser", "Ignoring region with malformed origin: ".concat(zza6));
                                                        }
                                                    }
                                                }
                                                float f7 = f2;
                                                String zza7 = zzeo.zza(newPullParser, "extent");
                                                if (zza7 != null) {
                                                    Matcher matcher5 = pattern2.matcher(zza7);
                                                    Matcher matcher6 = pattern.matcher(zza7);
                                                    if (matcher5.matches()) {
                                                        try {
                                                            String group9 = matcher5.group(1);
                                                            if (group9 == null) {
                                                                throw r48;
                                                            }
                                                            f3 = Float.parseFloat(group9) / 100.0f;
                                                            String group10 = matcher5.group(2);
                                                            if (group10 == null) {
                                                                throw r48;
                                                            }
                                                            parseInt2 = Float.parseFloat(group10) / 100.0f;
                                                        } catch (NumberFormatException unused8) {
                                                            zzdt.zzf("TtmlParser", "Ignoring region with malformed extent: ".concat(zza6));
                                                        }
                                                    } else if (!matcher6.matches()) {
                                                        zzdt.zzf("TtmlParser", "Ignoring region with unsupported extent: ".concat(zza6));
                                                    } else if (aotVar == null) {
                                                        zzdt.zzf("TtmlParser", "Ignoring region with missing tts:extent: ".concat(zza6));
                                                    } else {
                                                        try {
                                                            String group11 = matcher6.group(1);
                                                            if (group11 == null) {
                                                                throw r48;
                                                            }
                                                            int parseInt8 = Integer.parseInt(group11);
                                                            String group12 = matcher6.group(2);
                                                            if (group12 == null) {
                                                                throw r48;
                                                            }
                                                            f3 = parseInt8 / aotVar.f10586b;
                                                            parseInt2 = Integer.parseInt(group12) / aotVar.f10587c;
                                                        } catch (NumberFormatException unused9) {
                                                            zzdt.zzf("TtmlParser", "Ignoring region with malformed extent: ".concat(zza6));
                                                        }
                                                    }
                                                    float f8 = parseInt2;
                                                    float f9 = f3;
                                                    String zza8 = zzeo.zza(newPullParser, "displayAlign");
                                                    if (zza8 != null) {
                                                        String zza9 = zzfwa.zza(zza8);
                                                        int hashCode = zza9.hashCode();
                                                        if (hashCode != -1364013995) {
                                                            if (hashCode == 92734940 && zza9.equals("after")) {
                                                                c4 = 1;
                                                                if (c4 != 0) {
                                                                    f4 = parseInt + (f8 / 2.0f);
                                                                    i7 = 1;
                                                                } else if (c4 == 1) {
                                                                    f4 = parseInt + f8;
                                                                    i7 = 2;
                                                                }
                                                                float f10 = 1.0f / i5;
                                                                zza = zzeo.zza(newPullParser, "writingMode");
                                                                if (zza != null) {
                                                                    String zza10 = zzfwa.zza(zza);
                                                                    int hashCode2 = zza10.hashCode();
                                                                    if (hashCode2 == 3694) {
                                                                        if (zza10.equals("tb")) {
                                                                            c3 = 0;
                                                                            if (c3 != 0) {
                                                                            }
                                                                            i8 = 2;
                                                                            asrVar = new asr(zza5, f7, f4, 0, i7, f9, f8, 1, f10, i8);
                                                                        }
                                                                        c3 = 65535;
                                                                        if (c3 != 0) {
                                                                        }
                                                                        i8 = 2;
                                                                        asrVar = new asr(zza5, f7, f4, 0, i7, f9, f8, 1, f10, i8);
                                                                    } else if (hashCode2 != 3553396) {
                                                                        if (hashCode2 == 3553576 && zza10.equals("tbrl")) {
                                                                            c3 = 2;
                                                                            if (c3 != 0 || c3 == 1) {
                                                                                i8 = 2;
                                                                            } else if (c3 == 2) {
                                                                                i8 = 1;
                                                                            }
                                                                            asrVar = new asr(zza5, f7, f4, 0, i7, f9, f8, 1, f10, i8);
                                                                        }
                                                                        c3 = 65535;
                                                                        if (c3 != 0) {
                                                                        }
                                                                        i8 = 2;
                                                                        asrVar = new asr(zza5, f7, f4, 0, i7, f9, f8, 1, f10, i8);
                                                                    } else {
                                                                        if (zza10.equals("tblr")) {
                                                                            c3 = 1;
                                                                            if (c3 != 0) {
                                                                            }
                                                                            i8 = 2;
                                                                            asrVar = new asr(zza5, f7, f4, 0, i7, f9, f8, 1, f10, i8);
                                                                        }
                                                                        c3 = 65535;
                                                                        if (c3 != 0) {
                                                                        }
                                                                        i8 = 2;
                                                                        asrVar = new asr(zza5, f7, f4, 0, i7, f9, f8, 1, f10, i8);
                                                                    }
                                                                }
                                                                i8 = Integer.MIN_VALUE;
                                                                asrVar = new asr(zza5, f7, f4, 0, i7, f9, f8, 1, f10, i8);
                                                            }
                                                            c4 = 65535;
                                                            if (c4 != 0) {
                                                            }
                                                            float f102 = 1.0f / i5;
                                                            zza = zzeo.zza(newPullParser, "writingMode");
                                                            if (zza != null) {
                                                            }
                                                            i8 = Integer.MIN_VALUE;
                                                            asrVar = new asr(zza5, f7, f4, 0, i7, f9, f8, 1, f102, i8);
                                                        } else {
                                                            if (zza9.equals("center")) {
                                                                c4 = 0;
                                                                if (c4 != 0) {
                                                                }
                                                                float f1022 = 1.0f / i5;
                                                                zza = zzeo.zza(newPullParser, "writingMode");
                                                                if (zza != null) {
                                                                }
                                                                i8 = Integer.MIN_VALUE;
                                                                asrVar = new asr(zza5, f7, f4, 0, i7, f9, f8, 1, f1022, i8);
                                                            }
                                                            c4 = 65535;
                                                            if (c4 != 0) {
                                                            }
                                                            float f10222 = 1.0f / i5;
                                                            zza = zzeo.zza(newPullParser, "writingMode");
                                                            if (zza != null) {
                                                            }
                                                            i8 = Integer.MIN_VALUE;
                                                            asrVar = new asr(zza5, f7, f4, 0, i7, f9, f8, 1, f10222, i8);
                                                        }
                                                        newPullParser.next();
                                                        eventType = newPullParser.getEventType();
                                                        arrayDeque3 = arrayDeque;
                                                        gvtVar5 = gvtVar;
                                                        str11 = str2;
                                                        obj2 = null;
                                                        hashMap6 = hashMap2;
                                                        hashMap5 = hashMap;
                                                        str10 = str;
                                                    }
                                                    f4 = parseInt;
                                                    i7 = 0;
                                                    float f102222 = 1.0f / i5;
                                                    zza = zzeo.zza(newPullParser, "writingMode");
                                                    if (zza != null) {
                                                    }
                                                    i8 = Integer.MIN_VALUE;
                                                    asrVar = new asr(zza5, f7, f4, 0, i7, f9, f8, 1, f102222, i8);
                                                } else {
                                                    zzdt.zzf("TtmlParser", "Ignoring region without an extent");
                                                }
                                            } else {
                                                str8 = str122;
                                                hashMap4 = hashMap5;
                                                str9 = str132;
                                                zzdt.zzf("TtmlParser", "Ignoring region without an origin");
                                            }
                                            asrVar = r48;
                                        }
                                        if (asrVar != null) {
                                            hashMap2 = hashMap3;
                                            hashMap2.put(asrVar.f10762d, asrVar);
                                            if (zzeo.zzb(newPullParser, "head")) {
                                                gvtVar2 = gvtVar3;
                                                arrayDeque = arrayDeque2;
                                            } else {
                                                hashMap3 = hashMap2;
                                                gvtVar6 = gvtVar3;
                                                str142 = str7;
                                                str152 = str6;
                                                str122 = str8;
                                                str132 = str9;
                                                hashMap5 = hashMap4;
                                            }
                                        }
                                        hashMap2 = hashMap3;
                                        if (zzeo.zzb(newPullParser, "head")) {
                                        }
                                    } else if (zzeo.zzc(newPullParser, str132)) {
                                        do {
                                            newPullParser.next();
                                            if (zzeo.zzc(newPullParser, str122) && (zza2 = zzeo.zza(newPullParser, TTDownloadField.TT_ID)) != null) {
                                                hashMap7.put(zza2, newPullParser.nextText());
                                            }
                                        } while (!zzeo.zzb(newPullParser, str132));
                                    }
                                }
                                str8 = str122;
                                hashMap4 = hashMap5;
                                str9 = str132;
                                hashMap2 = hashMap3;
                                if (zzeo.zzb(newPullParser, "head")) {
                                }
                            }
                        }
                        gvtVar6 = gvtVar2;
                        i11 = i5;
                        aotVar2 = aotVar;
                        fznVar2 = fznVar3;
                        i10 = i4;
                        hashMap = hashMap4;
                        newPullParser.next();
                        eventType = newPullParser.getEventType();
                        arrayDeque3 = arrayDeque;
                        gvtVar5 = gvtVar;
                        str11 = str2;
                        obj2 = null;
                        hashMap6 = hashMap2;
                        hashMap5 = hashMap;
                        str10 = str;
                    } else {
                        str2 = str11;
                        HashMap hashMap8 = hashMap5;
                        hashMap2 = hashMap6;
                        arrayDeque = arrayDeque3;
                        gvtVar = gvtVar5;
                        fznVar = fznVar2;
                        i3 = i10;
                        if (eventType == 4) {
                            if (aemVar4 == null) {
                                throw null;
                            }
                            aem p = aem.p(newPullParser.getText());
                            if (aemVar4.h == null) {
                                aemVar4.h = new ArrayList();
                            }
                            aemVar4.h.add(p);
                        } else if (eventType == 3) {
                            if (newPullParser.getName().equals("tt")) {
                                aem aemVar5 = (aem) arrayDeque.peek();
                                if (aemVar5 == null) {
                                    throw null;
                                }
                                hashMap = hashMap8;
                                fznVar2 = new fzn(aemVar5, hashMap, hashMap2, hashMap7);
                            } else {
                                hashMap = hashMap8;
                                fznVar2 = fznVar;
                            }
                            arrayDeque.pop();
                        }
                        hashMap = hashMap8;
                        fznVar2 = fznVar;
                    }
                } else {
                    str = str10;
                    str2 = str11;
                    hashMap = hashMap5;
                    hashMap2 = hashMap6;
                    arrayDeque = arrayDeque3;
                    gvtVar = gvtVar5;
                    fznVar = fznVar2;
                    i3 = i10;
                    if (eventType == 2) {
                        i10 = i3 + 1;
                    } else {
                        if (eventType == 3) {
                            i10 = i3 - 1;
                        }
                        fznVar2 = fznVar;
                    }
                    fznVar2 = fznVar;
                    newPullParser.next();
                    eventType = newPullParser.getEventType();
                    arrayDeque3 = arrayDeque;
                    gvtVar5 = gvtVar;
                    str11 = str2;
                    obj2 = null;
                    hashMap6 = hashMap2;
                    hashMap5 = hashMap;
                    str10 = str;
                }
                i10 = i3;
                newPullParser.next();
                eventType = newPullParser.getEventType();
                arrayDeque3 = arrayDeque;
                gvtVar5 = gvtVar;
                str11 = str2;
                obj2 = null;
                hashMap6 = hashMap2;
                hashMap5 = hashMap;
                str10 = str;
            }
            fzn fznVar4 = fznVar2;
            if (fznVar4 != null) {
                return fznVar4;
            }
            throw null;
        } catch (IOException e6) {
            throw new IllegalStateException("Unexpected error when reading input.", e6);
        } catch (XmlPullParserException e7) {
            throw new IllegalStateException("Unable to decode source", e7);
        }
    }
}
