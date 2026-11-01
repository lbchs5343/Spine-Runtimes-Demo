package g;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.Pair;
import com.google.android.gms.internal.ads.zzcr;
import com.google.android.gms.internal.ads.zzcw;
import com.google.android.gms.internal.ads.zzcx;
import com.google.android.gms.internal.ads.zzcy;
import com.google.android.gms.internal.ads.zzcz;
import com.google.android.gms.internal.ads.zzdt;
import com.google.android.gms.internal.ads.zzen;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* loaded from: classes3.dex */
public final class aem {

    /* renamed from: a, reason: collision with root package name */
    public final String f10098a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f10099b;

    /* renamed from: c, reason: collision with root package name */
    public final long f10100c;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f10101d;

    /* renamed from: e, reason: collision with root package name */
    public final long f10102e;

    /* renamed from: f, reason: collision with root package name */
    public final String f10103f;

    /* renamed from: g, reason: collision with root package name */
    public final dla f10104g;
    public ArrayList h;
    public final String i;
    public final String j;
    public final aem k;
    public final boolean l;
    public final String[] m;

    public aem(String str, String str2, long j, long j2, dla dlaVar, String[] strArr, String str3, String str4, aem aemVar) {
        this.f10103f = str;
        this.j = str2;
        this.i = str4;
        this.f10104g = dlaVar;
        this.m = strArr;
        this.l = str2 != null;
        this.f10100c = j;
        this.f10102e = j2;
        str3.getClass();
        this.f10098a = str3;
        this.k = aemVar;
        this.f10099b = new HashMap();
        this.f10101d = new HashMap();
    }

    public static SpannableStringBuilder n(String str, TreeMap treeMap) {
        if (!treeMap.containsKey(str)) {
            zzcr zzcrVar = new zzcr();
            zzcrVar.zzl(new SpannableStringBuilder());
            treeMap.put(str, zzcrVar);
        }
        CharSequence zzq = ((zzcr) treeMap.get(str)).zzq();
        zzq.getClass();
        return (SpannableStringBuilder) zzq;
    }

    public static aem o(String str, long j, long j2, dla dlaVar, String[] strArr, String str2, String str3, aem aemVar) {
        return new aem(str, null, j, j2, dlaVar, strArr, str2, str3, aemVar);
    }

    public static aem p(String str) {
        return new aem(null, str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " "), -9223372036854775807L, -9223372036854775807L, null, null, "", null, null);
    }

    public final void q(long j, String str, ArrayList arrayList) {
        String str2;
        String str3 = this.f10098a;
        if (!"".equals(str3)) {
            str = str3;
        }
        if (s(j) && "div".equals(this.f10103f) && (str2 = this.i) != null) {
            arrayList.add(new Pair(str, str2));
            return;
        }
        for (int i = 0; i < t(); i++) {
            r(i).q(j, str, arrayList);
        }
    }

    public final aem r(int i) {
        ArrayList arrayList = this.h;
        if (arrayList != null) {
            return (aem) arrayList.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    public final boolean s(long j) {
        long j2 = this.f10102e;
        long j3 = this.f10100c;
        if (j3 == -9223372036854775807L) {
            if (j2 == -9223372036854775807L) {
                return true;
            }
            j3 = -9223372036854775807L;
        }
        if (j3 <= j && j2 == -9223372036854775807L) {
            return true;
        }
        if (j3 != -9223372036854775807L || j >= j2) {
            return j3 <= j && j < j2;
        }
        return true;
    }

    public final int t() {
        ArrayList arrayList = this.h;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    public final void u(long j, Map map, HashMap hashMap, String str, TreeMap treeMap) {
        int i;
        aem aemVar;
        dla at;
        int i2;
        int i3;
        int i4;
        Map map2 = map;
        if (s(j)) {
            String str2 = this.f10098a;
            String str3 = !"".equals(str2) ? str2 : str;
            for (Map.Entry entry : this.f10101d.entrySet()) {
                String str4 = (String) entry.getKey();
                HashMap hashMap2 = this.f10099b;
                int intValue = hashMap2.containsKey(str4) ? ((Integer) hashMap2.get(str4)).intValue() : 0;
                int intValue2 = ((Integer) entry.getValue()).intValue();
                if (intValue != intValue2) {
                    zzcr zzcrVar = (zzcr) treeMap.get(str4);
                    zzcrVar.getClass();
                    asr asrVar = (asr) hashMap.get(str3);
                    asrVar.getClass();
                    int i5 = asrVar.h;
                    dla at2 = eyt.at(this.f10104g, this.m, map2);
                    SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) zzcrVar.zzq();
                    if (spannableStringBuilder == null) {
                        spannableStringBuilder = new SpannableStringBuilder();
                        zzcrVar.zzl(spannableStringBuilder);
                    }
                    if (at2 != null) {
                        int i6 = at2.f14347a;
                        int i7 = 1;
                        if (((i6 == -1 && at2.m == -1) ? -1 : (i6 == 1 ? (char) 1 : (char) 0) | (at2.m == 1 ? (char) 2 : (char) 0)) != -1) {
                            int i8 = at2.f14347a;
                            if (i8 == -1) {
                                if (at2.m != -1) {
                                    i7 = 1;
                                } else {
                                    i7 = 1;
                                    i4 = -1;
                                    StyleSpan styleSpan = new StyleSpan(i4);
                                    i = 33;
                                    spannableStringBuilder.setSpan(styleSpan, intValue, intValue2, 33);
                                }
                            }
                            i4 = (i8 == i7 ? 1 : 0) | (at2.m == i7 ? 2 : 0);
                            StyleSpan styleSpan2 = new StyleSpan(i4);
                            i = 33;
                            spannableStringBuilder.setSpan(styleSpan2, intValue, intValue2, 33);
                        } else {
                            i = 33;
                        }
                        if (at2.i == i7) {
                            spannableStringBuilder.setSpan(new StrikethroughSpan(), intValue, intValue2, i);
                        }
                        if (at2.r == i7) {
                            spannableStringBuilder.setSpan(new UnderlineSpan(), intValue, intValue2, i);
                        }
                        if (at2.q) {
                            if (!at2.q) {
                                throw new IllegalStateException("Font color has not been defined.");
                            }
                            zzcy.zzb(spannableStringBuilder, new ForegroundColorSpan(at2.n), intValue, intValue2, i);
                        }
                        if (at2.f14353g) {
                            if (!at2.f14353g) {
                                throw new IllegalStateException("Background color has not been defined.");
                            }
                            zzcy.zzb(spannableStringBuilder, new BackgroundColorSpan(at2.f14351e), intValue, intValue2, 33);
                        }
                        if (at2.h != null) {
                            zzcy.zzb(spannableStringBuilder, new TypefaceSpan(at2.h), intValue, intValue2, 33);
                        }
                        csc cscVar = at2.s;
                        if (cscVar != null) {
                            int i9 = cscVar.f13421f;
                            if (i9 == -1) {
                                i9 = (i5 == 2 || i5 == 1) ? 3 : 1;
                                i3 = 1;
                            } else {
                                i3 = cscVar.f13422g;
                            }
                            int i10 = cscVar.h;
                            if (i10 == -2) {
                                i10 = 1;
                            }
                            zzcy.zzb(spannableStringBuilder, new zzcz(i9, i3, i10), intValue, intValue2, 33);
                        }
                        int i11 = at2.l;
                        if (i11 == 2) {
                            aem aemVar2 = this.k;
                            while (true) {
                                if (aemVar2 == null) {
                                    aemVar2 = null;
                                    break;
                                }
                                dla at3 = eyt.at(aemVar2.f10104g, aemVar2.m, map2);
                                if (at3 != null && at3.l == 1) {
                                    break;
                                } else {
                                    aemVar2 = aemVar2.k;
                                }
                            }
                            if (aemVar2 != null) {
                                ArrayDeque arrayDeque = new ArrayDeque();
                                arrayDeque.push(aemVar2);
                                while (true) {
                                    if (arrayDeque.isEmpty()) {
                                        aemVar = null;
                                        break;
                                    }
                                    aem aemVar3 = (aem) arrayDeque.pop();
                                    dla at4 = eyt.at(aemVar3.f10104g, aemVar3.m, map2);
                                    if (at4 != null && at4.l == 3) {
                                        aemVar = aemVar3;
                                        break;
                                    }
                                    for (int t = aemVar3.t() - 1; t >= 0; t--) {
                                        arrayDeque.push(aemVar3.r(t));
                                    }
                                }
                                if (aemVar != null) {
                                    if (aemVar.t() != 1 || aemVar.r(0).j == null) {
                                        zzdt.zze("TtmlRenderUtil", "Skipping rubyText node without exactly one text child.");
                                    } else {
                                        String str5 = aemVar.r(0).j;
                                        int i12 = zzen.zza;
                                        dla at5 = eyt.at(aemVar.f10104g, aemVar.m, map2);
                                        int i13 = at5 != null ? at5.f14350d : -1;
                                        if (i13 == -1 && (at = eyt.at(aemVar2.f10104g, aemVar2.m, map2)) != null) {
                                            i13 = at.f14350d;
                                        }
                                        spannableStringBuilder.setSpan(new zzcx(str5, i13), intValue, intValue2, 33);
                                    }
                                }
                            }
                        } else if (i11 == 3 || i11 == 4) {
                            spannableStringBuilder.setSpan(new djq(), intValue, intValue2, 33);
                        }
                        if (at2.p == 1) {
                            i2 = 33;
                            zzcy.zzb(spannableStringBuilder, new zzcw(), intValue, intValue2, 33);
                        } else {
                            i2 = 33;
                        }
                        int i14 = at2.o;
                        if (i14 == 1) {
                            zzcy.zzb(spannableStringBuilder, new AbsoluteSizeSpan((int) at2.f14348b, true), intValue, intValue2, i2);
                        } else if (i14 == 2) {
                            zzcy.zzb(spannableStringBuilder, new RelativeSizeSpan(at2.f14348b), intValue, intValue2, i2);
                        } else if (i14 == 3) {
                            zzcy.zza(spannableStringBuilder, at2.f14348b / 100.0f, intValue, intValue2, i2);
                        }
                        if ("p".equals(this.f10103f)) {
                            float f2 = at2.j;
                            if (f2 != Float.MAX_VALUE) {
                                zzcrVar.zzj((f2 * (-90.0f)) / 100.0f);
                            }
                            Layout.Alignment alignment = at2.f14349c;
                            if (alignment != null) {
                                zzcrVar.zzm(alignment);
                            }
                            Layout.Alignment alignment2 = at2.k;
                            if (alignment2 != null) {
                                zzcrVar.zzg(alignment2);
                            }
                        }
                    } else {
                        continue;
                    }
                }
            }
            int i15 = 0;
            while (i15 < t()) {
                r(i15).u(j, map2, hashMap, str3, treeMap);
                i15++;
                map2 = map;
            }
        }
    }

    public final void v(long j, boolean z, String str, TreeMap treeMap) {
        long j2;
        TreeMap treeMap2;
        boolean z2;
        HashMap hashMap = this.f10099b;
        hashMap.clear();
        HashMap hashMap2 = this.f10101d;
        hashMap2.clear();
        String str2 = this.f10103f;
        if ("metadata".equals(str2)) {
            return;
        }
        String str3 = this.f10098a;
        String str4 = !"".equals(str3) ? str3 : str;
        if (this.l && z) {
            SpannableStringBuilder n = n(str4, treeMap);
            String str5 = this.j;
            str5.getClass();
            n.append((CharSequence) str5);
            return;
        }
        if ("br".equals(str2) && z) {
            n(str4, treeMap).append('\n');
            return;
        }
        if (s(j)) {
            for (Map.Entry entry : treeMap.entrySet()) {
                String str6 = (String) entry.getKey();
                CharSequence zzq = ((zzcr) entry.getValue()).zzq();
                zzq.getClass();
                hashMap.put(str6, Integer.valueOf(zzq.length()));
            }
            boolean equals = "p".equals(str2);
            for (int i = 0; i < t(); i++) {
                aem r = r(i);
                if (z || equals) {
                    j2 = j;
                    treeMap2 = treeMap;
                    z2 = true;
                } else {
                    j2 = j;
                    treeMap2 = treeMap;
                    z2 = false;
                }
                r.v(j2, z2, str4, treeMap2);
            }
            if (equals) {
                SpannableStringBuilder n2 = n(str4, treeMap);
                int length = n2.length();
                do {
                    length--;
                    if (length < 0) {
                        break;
                    }
                } while (n2.charAt(length) == ' ');
                if (length >= 0 && n2.charAt(length) != '\n') {
                    n2.append('\n');
                }
            }
            for (Map.Entry entry2 : treeMap.entrySet()) {
                String str7 = (String) entry2.getKey();
                CharSequence zzq2 = ((zzcr) entry2.getValue()).zzq();
                zzq2.getClass();
                hashMap2.put(str7, Integer.valueOf(zzq2.length()));
            }
        }
    }

    public final void w(TreeSet treeSet, boolean z) {
        String str = this.f10103f;
        boolean equals = "p".equals(str);
        boolean equals2 = "div".equals(str);
        if (z || equals || (equals2 && this.i != null)) {
            long j = this.f10100c;
            if (j != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j));
            }
            long j2 = this.f10102e;
            if (j2 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j2));
            }
        }
        if (this.h != null) {
            for (int i = 0; i < this.h.size(); i++) {
                aem aemVar = (aem) this.h.get(i);
                boolean z2 = true;
                if (!z && !equals) {
                    z2 = false;
                }
                aemVar.w(treeSet, z2);
            }
        }
    }
}
