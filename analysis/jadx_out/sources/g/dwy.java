package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class dwy {

    /* renamed from: a, reason: collision with root package name */
    public static final HashSet f14988a = new HashSet(Arrays.asList("anim", "animator", "font", TTDownloadField.TT_ID, "interpolator", "layout", "menu", "mipmap", "navigation", "raw", "transition", "xml"));

    /* renamed from: b, reason: collision with root package name */
    public final gyo f14989b;

    /* renamed from: c, reason: collision with root package name */
    public final bpo f14990c;

    /* renamed from: d, reason: collision with root package name */
    public final gql f14991d;

    public dwy(gyo gyoVar, bpo bpoVar, gql gqlVar) {
        this.f14989b = gyoVar;
        this.f14990c = bpoVar;
        this.f14991d = gqlVar;
    }

    public static void e(eos eosVar, String str, String str2, String str3, String str4, String str5) {
        int i;
        char charAt;
        if (str5 == null || str5.startsWith("res/")) {
            return;
        }
        ((grs) eosVar).ag();
        eosVar.a('<').d(str2);
        if (str3 != null && str4 != null) {
            if (str.equals("attr")) {
                eosVar.a(' ').d("name=\"").d(str3.replace("id.", "")).d("\" value=\"").d(str4).a('\"');
            } else if (str.equals("style")) {
                eosVar.a(' ').d("name=\"").d(str3.replace("attr.", "")).a('\"');
            } else {
                eosVar.a(' ').d(str3).d("=\"").d(str4).a('\"');
            }
        }
        int i2 = 0;
        if (str2.equals("string") && str5.contains("%")) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int length = str5.length();
            int i3 = 0;
            while (true) {
                int indexOf = str5.indexOf(37, i3);
                if (indexOf == -1) {
                    break;
                }
                int i4 = indexOf + 1;
                if (i4 == length) {
                    arrayList.add(Integer.valueOf(indexOf));
                    break;
                }
                int i5 = indexOf + 2;
                char charAt2 = str5.charAt(i4);
                if (charAt2 == '%') {
                    i3 = i5;
                } else {
                    if (charAt2 < '0' || charAt2 > '9' || i5 >= length) {
                        i = i5;
                    } else {
                        while (true) {
                            i = i5 + 1;
                            charAt = str5.charAt(i5);
                            if (charAt < '0' || charAt > '9' || i >= length) {
                                break;
                            } else {
                                i5 = i;
                            }
                        }
                        if (charAt == '$') {
                            arrayList2.add(Integer.valueOf(indexOf));
                            i3 = i;
                        }
                    }
                    arrayList.add(Integer.valueOf(indexOf));
                    if (arrayList.size() >= 4) {
                        break;
                    }
                    i3 = i;
                }
            }
            if (!arrayList.isEmpty()) {
                if (arrayList2.size() + arrayList.size() > 1) {
                    eosVar.d(" formatted=\"false\"");
                }
            }
        }
        if (str5.isEmpty()) {
            eosVar.d(" />");
            return;
        }
        eosVar.a('>');
        if (str2.equals("string") || (str.equals("array") && str5.charAt(0) != '@')) {
            foj fojVar = foj.f17138a;
            int length2 = str5.length();
            StringBuilder sb = new StringBuilder(length2);
            while (i2 < length2) {
                char charAt3 = str5.charAt(i2);
                if (charAt3 == '\"') {
                    sb.append("\\\"");
                } else if (charAt3 != '\'') {
                    foj.h(sb, charAt3);
                } else {
                    sb.append("\\'");
                }
                i2++;
            }
            eosVar.d(sb.toString());
        } else {
            foj fojVar2 = foj.f17138a;
            int length3 = str5.length();
            StringBuilder sb2 = new StringBuilder(length3);
            while (i2 < length3) {
                foj.h(sb2, str5.charAt(i2));
                i2++;
            }
            eosVar.d(sb2.toString());
        }
        eosVar.d("</").d(str2).a('>');
    }
}
