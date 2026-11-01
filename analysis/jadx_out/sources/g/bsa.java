package g;

import com.ss.android.download.api.constant.BaseConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class bsa implements Iterable, gey {

    /* renamed from: a, reason: collision with root package name */
    public final String f12108a;

    public bsa(String str) {
        if (str == null) {
            throw new IllegalArgumentException("StringValue cannot be null.");
        }
        this.f12108a = str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // g.gey
    public final gey _ag(String str, dpa dpaVar, ArrayList arrayList) {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        char c2;
        int i;
        String str7;
        int i2;
        int i3;
        int i4;
        dpa dpaVar2;
        int i5;
        if ("charAt".equals(str) || "concat".equals(str) || "hasOwnProperty".equals(str) || "indexOf".equals(str) || "lastIndexOf".equals(str) || "match".equals(str) || "replace".equals(str) || BaseConstants.MARKET_URI_AUTHORITY_SEARCH.equals(str) || "slice".equals(str) || "split".equals(str) || "substring".equals(str) || "toLowerCase".equals(str) || "toLocaleLowerCase".equals(str) || "toString".equals(str) || "toUpperCase".equals(str) || "toLocaleUpperCase".equals(str)) {
            str2 = "hasOwnProperty";
            str3 = "trim";
        } else {
            str2 = "hasOwnProperty";
            str3 = "trim";
            if (!str3.equals(str)) {
                throw new IllegalArgumentException(str.concat(" is not a String function"));
            }
        }
        switch (str.hashCode()) {
            case -1789698943:
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                if (str.equals(str4)) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -1776922004:
                str5 = "charAt";
                str6 = "toString";
                if (str.equals(str6)) {
                    c2 = 14;
                    str4 = str2;
                    break;
                } else {
                    str4 = str2;
                    c2 = 65535;
                    break;
                }
            case -1464939364:
                str5 = "charAt";
                if (str.equals("toLocaleLowerCase")) {
                    c2 = '\f';
                    str4 = str2;
                    str6 = "toString";
                    break;
                }
                str4 = str2;
                str6 = "toString";
                c2 = 65535;
                break;
            case -1361633751:
                str5 = "charAt";
                if (str.equals(str5)) {
                    str4 = str2;
                    str6 = "toString";
                    c2 = 0;
                    break;
                }
                str4 = str2;
                str6 = "toString";
                c2 = 65535;
                break;
            case -1354795244:
                if (str.equals("concat")) {
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    c2 = 1;
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                c2 = 65535;
                break;
            case -1137582698:
                if (str.equals("toLowerCase")) {
                    c2 = '\r';
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                c2 = 65535;
                break;
            case -906336856:
                if (str.equals(BaseConstants.MARKET_URI_AUTHORITY_SEARCH)) {
                    c2 = 7;
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                c2 = 65535;
                break;
            case -726908483:
                if (str.equals("toLocaleUpperCase")) {
                    c2 = 11;
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                c2 = 65535;
                break;
            case -467511597:
                if (str.equals("lastIndexOf")) {
                    c2 = 4;
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                c2 = 65535;
                break;
            case -399551817:
                if (str.equals("toUpperCase")) {
                    c2 = 15;
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                c2 = 65535;
                break;
            case 3568674:
                if (str.equals(str3)) {
                    c2 = 16;
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                c2 = 65535;
                break;
            case 103668165:
                if (str.equals("match")) {
                    c2 = 5;
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                c2 = 65535;
                break;
            case 109526418:
                if (str.equals("slice")) {
                    c2 = '\b';
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                c2 = 65535;
                break;
            case 109648666:
                if (str.equals("split")) {
                    c2 = '\t';
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                c2 = 65535;
                break;
            case 530542161:
                if (str.equals("substring")) {
                    c2 = '\n';
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                c2 = 65535;
                break;
            case 1094496948:
                if (str.equals("replace")) {
                    c2 = 6;
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                c2 = 65535;
                break;
            case 1943291465:
                if (str.equals("indexOf")) {
                    str4 = str2;
                    str5 = "charAt";
                    str6 = "toString";
                    c2 = 3;
                    break;
                }
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                c2 = 65535;
                break;
            default:
                str4 = str2;
                str5 = "charAt";
                str6 = "toString";
                c2 = 65535;
                break;
        }
        char c3 = c2;
        String str8 = this.f12108a;
        switch (c3) {
            case 0:
                byh.ba(str5, 1, arrayList);
                int ar = !arrayList.isEmpty() ? (int) byh.ar(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0)).zzh().doubleValue()) : 0;
                return (ar < 0 || ar >= str8.length()) ? gey.p : new bsa(String.valueOf(str8.charAt(ar)));
            case 1:
                if (!arrayList.isEmpty()) {
                    StringBuilder sb = new StringBuilder(str8);
                    for (int i6 = 0; i6 < arrayList.size(); i6++) {
                        sb.append(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(i6)).zzi());
                    }
                    return new bsa(sb.toString());
                }
                return this;
            case 2:
                byh.ah(1, str4, arrayList);
                gey aj = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0));
                boolean equals = "length".equals(aj.zzi());
                bbk bbkVar = gey.j;
                if (equals) {
                    return bbkVar;
                }
                double doubleValue = aj.zzh().doubleValue();
                return (doubleValue != Math.floor(doubleValue) || (i = (int) doubleValue) < 0 || i >= str8.length()) ? gey.m : bbkVar;
            case 3:
                byh.ba("indexOf", 2, arrayList);
                return new hbz(Double.valueOf(str8.indexOf(arrayList.size() > 0 ? ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0)).zzi() : "undefined", (int) byh.ar(arrayList.size() < 2 ? 0.0d : ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1)).zzh().doubleValue()))));
            case 4:
                byh.ba("lastIndexOf", 2, arrayList);
                String zzi = arrayList.size() > 0 ? ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0)).zzi() : "undefined";
                return new hbz(Double.valueOf(str8.lastIndexOf(zzi, (int) (Double.isNaN(arrayList.size() < 2 ? Double.NaN : ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1)).zzh().doubleValue()) ? Double.POSITIVE_INFINITY : byh.ar(r3)))));
            case 5:
                byh.ba("match", 1, arrayList);
                Matcher matcher = Pattern.compile(arrayList.size() <= 0 ? "" : ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0)).zzi()).matcher(str8);
                return matcher.find() ? new gwa(Arrays.asList(new bsa(matcher.group()))) : gey.i;
            case 6:
                byh.ba("replace", 2, arrayList);
                boolean isEmpty = arrayList.isEmpty();
                gey geyVar = gey.o;
                if (!isEmpty) {
                    str7 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0)).zzi();
                    if (arrayList.size() > 1) {
                        geyVar = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1));
                    }
                }
                String str9 = str7;
                int indexOf = str8.indexOf(str9);
                if (indexOf >= 0) {
                    if (geyVar instanceof fdk) {
                        i2 = 0;
                        geyVar = ((fdk) geyVar).e(dpaVar, Arrays.asList(new bsa(str9), new hbz(Double.valueOf(indexOf)), this));
                    } else {
                        i2 = 0;
                    }
                    return new bsa(awf.i(str8.substring(i2, indexOf), geyVar.zzi(), str8.substring(str9.length() + indexOf)));
                }
                return this;
            case 7:
                byh.ba(BaseConstants.MARKET_URI_AUTHORITY_SEARCH, 1, arrayList);
                return Pattern.compile(arrayList.isEmpty() ? "undefined" : ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0)).zzi()).matcher(str8).find() ? new hbz(Double.valueOf(r1.start())) : new hbz(Double.valueOf(-1.0d));
            case '\b':
                byh.ba("slice", 2, arrayList);
                double ar2 = byh.ar(!arrayList.isEmpty() ? ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0)).zzh().doubleValue() : 0.0d);
                int max = (int) (ar2 < 0.0d ? Math.max(str8.length() + ar2, 0.0d) : Math.min(ar2, str8.length()));
                double ar3 = byh.ar(arrayList.size() > 1 ? ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1)).zzh().doubleValue() : str8.length());
                return new bsa(str8.substring(max, Math.max(0, ((int) (ar3 < 0.0d ? Math.max(str8.length() + ar3, 0.0d) : Math.min(ar3, str8.length()))) - max) + max));
            case '\t':
                byh.ba("split", 2, arrayList);
                if (str8.length() == 0) {
                    return new gwa(Arrays.asList(this));
                }
                ArrayList arrayList2 = new ArrayList();
                if (arrayList.isEmpty()) {
                    arrayList2.add(this);
                } else {
                    String zzi2 = ((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(0)).zzi();
                    long az = arrayList.size() > 1 ? byh.az(((ffr) dpaVar.f14566d).aj(dpaVar, (gey) arrayList.get(1)).zzh().doubleValue()) & 4294967295L : 2147483647L;
                    if (az == 0) {
                        return new gwa();
                    }
                    String[] split = str8.split(Pattern.quote(zzi2), ((int) az) + 1);
                    int length = split.length;
                    if (!zzi2.isEmpty() || length <= 0) {
                        i3 = length;
                        i4 = 0;
                    } else {
                        boolean isEmpty2 = split[0].isEmpty();
                        i3 = length - 1;
                        i4 = isEmpty2;
                        if (!split[i3].isEmpty()) {
                            i3 = length;
                            i4 = isEmpty2;
                        }
                    }
                    if (length > az) {
                        i3--;
                    }
                    while (i4 < i3) {
                        arrayList2.add(new bsa(split[i4]));
                        i4++;
                    }
                }
                return new gwa(arrayList2);
            case '\n':
                byh.ba("substring", 2, arrayList);
                if (arrayList.isEmpty()) {
                    dpaVar2 = dpaVar;
                    i5 = 0;
                } else {
                    dpaVar2 = dpaVar;
                    i5 = (int) byh.ar(((ffr) dpaVar2.f14566d).aj(dpaVar2, (gey) arrayList.get(0)).zzh().doubleValue());
                }
                int ar4 = arrayList.size() > 1 ? (int) byh.ar(((ffr) dpaVar2.f14566d).aj(dpaVar2, (gey) arrayList.get(1)).zzh().doubleValue()) : str8.length();
                int min = Math.min(Math.max(i5, 0), str8.length());
                int min2 = Math.min(Math.max(ar4, 0), str8.length());
                return new bsa(str8.substring(Math.min(min, min2), Math.max(min, min2)));
            case 11:
                byh.ah(0, "toLocaleUpperCase", arrayList);
                return new bsa(str8.toUpperCase());
            case '\f':
                byh.ah(0, "toLocaleLowerCase", arrayList);
                return new bsa(str8.toLowerCase());
            case '\r':
                byh.ah(0, "toLowerCase", arrayList);
                return new bsa(str8.toLowerCase(Locale.ENGLISH));
            case 14:
                byh.ah(0, str6, arrayList);
                return this;
            case 15:
                byh.ah(0, "toUpperCase", arrayList);
                return new bsa(str8.toUpperCase(Locale.ENGLISH));
            case 16:
                byh.ah(0, "toUpperCase", arrayList);
                return new bsa(str8.trim());
            default:
                throw new IllegalArgumentException("Command not supported");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof bsa) {
            return this.f12108a.equals(((bsa) obj).f12108a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f12108a.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new fms(this, 1);
    }

    public final String toString() {
        return tn.ad("\"", this.f12108a, "\"");
    }

    @Override // g.gey
    public final gey zzd() {
        return new bsa(this.f12108a);
    }

    @Override // g.gey
    public final Boolean zzg() {
        return Boolean.valueOf(!this.f12108a.isEmpty());
    }

    @Override // g.gey
    public final Double zzh() {
        String str = this.f12108a;
        if (str.isEmpty()) {
            return Double.valueOf(0.0d);
        }
        try {
            return Double.valueOf(str);
        } catch (NumberFormatException unused) {
            return Double.valueOf(Double.NaN);
        }
    }

    @Override // g.gey
    public final String zzi() {
        return this.f12108a;
    }

    @Override // g.gey
    public final Iterator zzl() {
        return new fms(this, 0);
    }
}
