package g;

import android.util.StateSet;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class ke {

    /* renamed from: a, reason: collision with root package name */
    public Object f19532a;

    /* renamed from: b, reason: collision with root package name */
    public Object f19533b;

    /* renamed from: c, reason: collision with root package name */
    public Object f19534c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f19535d;

    /* renamed from: e, reason: collision with root package name */
    public Serializable f19536e;

    /* renamed from: f, reason: collision with root package name */
    public Object f19537f;

    /* renamed from: g, reason: collision with root package name */
    public int f19538g;
    public Object h;
    public Object i;

    public ke(int i) {
        this.f19535d = i;
        switch (i) {
            case 2:
                break;
            default:
                this.f19534c = "";
                this.f19536e = "";
                this.f19538g = -1;
                ArrayList arrayList = new ArrayList();
                this.h = arrayList;
                arrayList.add("");
                break;
        }
    }

    public ke(cjg cjgVar) {
        this.f19535d = 2;
        k();
        l(StateSet.WILD_CARD, cjgVar);
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [g.baw[], java.io.Serializable] */
    public ke(dsg dsgVar, int i, int i2) {
        this.f19535d = 0;
        this.f19533b = dsgVar;
        this.f19534c = dsgVar.u();
        this.f19536e = new baw[i];
        this.f19538g = i2;
    }

    public void j(baw bawVar, int i) {
        if (bawVar.f11194b) {
            return;
        }
        bawVar.f11194b = true;
        bawVar.f11199g = i;
        ((ArrayList) this.h).add(bawVar);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [g.cjg[], java.io.Serializable] */
    public void k() {
        this.f19533b = new cjg();
        this.f19534c = new int[10][];
        this.f19536e = new cjg[10];
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [g.cjg[], java.io.Serializable, java.lang.Object] */
    public void l(int[] iArr, cjg cjgVar) {
        int i = this.f19538g;
        if (i == 0 || iArr.length == 0) {
            this.f19533b = cjgVar;
        }
        int[][] iArr2 = (int[][]) this.f19534c;
        if (i >= iArr2.length) {
            int i2 = i + 10;
            int[][] iArr3 = new int[i2][];
            System.arraycopy(iArr2, 0, iArr3, 0, i);
            this.f19534c = iArr3;
            ?? r1 = new cjg[i2];
            System.arraycopy((cjg[]) this.f19536e, 0, r1, 0, i);
            this.f19536e = r1;
        }
        int[][] iArr4 = (int[][]) this.f19534c;
        int i3 = this.f19538g;
        iArr4[i3] = iArr;
        ((cjg[]) this.f19536e)[i3] = cjgVar;
        this.f19538g = i3 + 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:174:0x0208, code lost:
    
        if (r8 < 65536) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007e, code lost:
    
        if (r13 == ':') goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m(eyn eynVar, String str) {
        int i;
        int t;
        int i2;
        char charAt;
        ArrayList arrayList = (ArrayList) this.h;
        bff.p(str, "input");
        byte[] bArr = erq.f16043c;
        int w = erq.w(0, str.length(), str);
        int l = erq.l(w, str.length(), str);
        if (l - w >= 2) {
            char charAt2 = str.charAt(w);
            if ((bff.ad(charAt2, 97) >= 0 && bff.ad(charAt2, 122) <= 0) || (bff.ad(charAt2, 65) >= 0 && bff.ad(charAt2, 90) <= 0)) {
                i = w + 1;
                while (true) {
                    if (i >= l) {
                        break;
                    }
                    char charAt3 = str.charAt(i);
                    if (('a' <= charAt3 && charAt3 < '{') || (('A' <= charAt3 && charAt3 < '[') || (('0' <= charAt3 && charAt3 < ':') || charAt3 == '+' || charAt3 == '-' || charAt3 == '.'))) {
                        i++;
                    }
                }
            }
        }
        i = -1;
        if (i == -1) {
            if (eynVar == null) {
                throw new IllegalArgumentException(tn.x("Expected URL scheme 'http' or 'https' but no scheme was found for ", str.length() > 6 ? dcv.bu(6, str).concat("...") : str));
            }
            this.f19533b = eynVar.f16375e;
        } else if (dmc.bz(str, w, "https:", true)) {
            this.f19533b = "https";
            w += 6;
        } else {
            if (!dmc.bz(str, w, "http:", true)) {
                StringBuilder sb = new StringBuilder("Expected URL scheme 'http' or 'https' but was '");
                String substring = str.substring(0, i);
                bff.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                sb.append(substring);
                sb.append('\'');
                throw new IllegalArgumentException(sb.toString());
            }
            this.f19533b = "http";
            w += 5;
        }
        int i3 = 0;
        for (int i4 = w; i4 < l && ((charAt = str.charAt(i4)) == '\\' || charAt == '/'); i4++) {
            i3++;
        }
        char c2 = '#';
        if (i3 >= 2 || eynVar == null || !bff.n(eynVar.f16375e, (String) this.f19533b)) {
            int i5 = w + i3;
            boolean z = false;
            boolean z2 = false;
            while (true) {
                t = erq.t(i5, l, str, "@/\\?#");
                char charAt4 = t != l ? str.charAt(t) : (char) 65535;
                if (charAt4 == 65535 || charAt4 == c2 || charAt4 == '/' || charAt4 == '\\' || charAt4 == '?') {
                    break;
                }
                if (charAt4 == '@') {
                    if (z) {
                        this.f19536e = ((String) this.f19536e) + "%40" + gpu.k(i5, t, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA, str, " \"':;<=>@[]^`{}|/\\?#");
                        z = z;
                    } else {
                        boolean z3 = z;
                        int ae = erq.ae(str, i5, t, ':');
                        String k = gpu.k(i5, ae, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA, str, " \"':;<=>@[]^`{}|/\\?#");
                        if (z2) {
                            k = awf.f((String) this.f19534c, "%40", k, new StringBuilder());
                        }
                        this.f19534c = k;
                        if (ae != t) {
                            this.f19536e = gpu.k(ae + 1, t, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA, str, " \"':;<=>@[]^`{}|/\\?#");
                            z = true;
                        } else {
                            z = z3;
                        }
                        z2 = true;
                    }
                    i5 = t + 1;
                    c2 = '#';
                }
            }
            int i6 = i5;
            while (true) {
                if (i6 >= t) {
                    i6 = t;
                    break;
                }
                char charAt5 = str.charAt(i6);
                if (charAt5 != '[') {
                    if (charAt5 == ':') {
                        break;
                    }
                } else {
                    do {
                        i6++;
                        if (i6 >= t) {
                            break;
                        }
                    } while (str.charAt(i6) != ']');
                }
                i6++;
            }
            int i7 = i6 + 1;
            if (i7 < t) {
                this.i = byh.t(gpu.h(str, i5, i6, 4));
                try {
                    i2 = Integer.parseInt(gpu.k(i7, t, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SEEK_INTERRUPT, str, ""));
                    if (1 <= i2) {
                    }
                } catch (NumberFormatException unused) {
                }
                i2 = -1;
                this.f19538g = i2;
                if (i2 == -1) {
                    StringBuilder sb2 = new StringBuilder("Invalid URL port: \"");
                    String substring2 = str.substring(i7, t);
                    bff.e(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
                    sb2.append(substring2);
                    sb2.append('\"');
                    throw new IllegalArgumentException(sb2.toString().toString());
                }
            } else {
                this.i = byh.t(gpu.h(str, i5, i6, 4));
                String str2 = (String) this.f19533b;
                bff.d(str2);
                this.f19538g = str2.equals("http") ? 80 : str2.equals("https") ? 443 : -1;
            }
            if (((String) this.i) == null) {
                StringBuilder sb3 = new StringBuilder("Invalid URL host: \"");
                String substring3 = str.substring(i5, i6);
                bff.e(substring3, "this as java.lang.String…ing(startIndex, endIndex)");
                sb3.append(substring3);
                sb3.append('\"');
                throw new IllegalArgumentException(sb3.toString().toString());
            }
            w = t;
        } else {
            this.f19534c = eynVar.n();
            this.f19536e = eynVar.o();
            this.i = eynVar.f16373c;
            this.f19538g = eynVar.f16374d;
            arrayList.clear();
            arrayList.addAll(eynVar.r());
            if (w == l || str.charAt(w) == '#') {
                String m = eynVar.m();
                this.f19532a = m != null ? gpu.j(gpu.k(0, 0, MediaPlayer.MEDIA_PLAYER_OPTION_BUFFERING_BEFORE_FIRST_FRAME, m, " \"'<>#")) : null;
            }
        }
        int t2 = erq.t(w, l, str, "?#");
        if (w != t2) {
            char charAt6 = str.charAt(w);
            if (charAt6 == '/' || charAt6 == '\\') {
                arrayList.clear();
                arrayList.add("");
                w++;
            } else {
                arrayList.set(arrayList.size() - 1, "");
            }
            while (w < t2) {
                int t3 = erq.t(w, t2, str, "/\\");
                boolean z4 = t3 < t2;
                String k2 = gpu.k(w, t3, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA, str, " \"<>^`{}|/\\?#");
                if (!k2.equals(".") && !k2.equalsIgnoreCase("%2e")) {
                    if (!k2.equals("..") && !k2.equalsIgnoreCase("%2e.") && !k2.equalsIgnoreCase(".%2e") && !k2.equalsIgnoreCase("%2e%2e")) {
                        if (((CharSequence) arrayList.get(arrayList.size() - 1)).length() == 0) {
                            arrayList.set(arrayList.size() - 1, k2);
                        } else {
                            arrayList.add(k2);
                        }
                        if (z4) {
                            arrayList.add("");
                        }
                    } else if (((String) arrayList.remove(arrayList.size() - 1)).length() != 0 || arrayList.isEmpty()) {
                        arrayList.add("");
                    } else {
                        arrayList.set(arrayList.size() - 1, "");
                    }
                }
                w = z4 ? t3 + 1 : t3;
            }
        }
        if (t2 < l && str.charAt(t2) == '?') {
            int ae2 = erq.ae(str, t2, l, '#');
            this.f19532a = gpu.j(gpu.k(t2 + 1, ae2, MediaPlayer.MEDIA_PLAYER_OPTION_DRM_DOWNGRADE, str, " \"'<>#"));
            t2 = ae2;
        }
        if (t2 >= l || str.charAt(t2) != '#') {
            return;
        }
        this.f19537f = gpu.k(t2 + 1, l, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_HURRY_THRESHOLD, str, "");
    }

    public eyn n() {
        ArrayList arrayList;
        String str = (String) this.f19533b;
        if (str == null) {
            throw new IllegalStateException("scheme == null");
        }
        String h = gpu.h((String) this.f19534c, 0, 0, 7);
        String h2 = gpu.h((String) this.f19536e, 0, 0, 7);
        String str2 = (String) this.i;
        if (str2 == null) {
            throw new IllegalStateException("host == null");
        }
        int o = o();
        ArrayList arrayList2 = (ArrayList) this.h;
        ArrayList arrayList3 = new ArrayList(bkk.a(arrayList2));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add(gpu.h((String) it.next(), 0, 0, 7));
        }
        ArrayList<String> arrayList4 = (ArrayList) this.f19532a;
        if (arrayList4 != null) {
            ArrayList arrayList5 = new ArrayList(bkk.a(arrayList4));
            for (String str3 : arrayList4) {
                arrayList5.add(str3 != null ? gpu.h(str3, 0, 0, 3) : null);
            }
            arrayList = arrayList5;
        } else {
            arrayList = null;
        }
        String str4 = (String) this.f19537f;
        return new eyn(str, h, h2, str2, o, arrayList3, arrayList, str4 != null ? gpu.h(str4, 0, 0, 7) : null, toString());
    }

    public int o() {
        int i = this.f19538g;
        if (i != -1) {
            return i;
        }
        String str = (String) this.f19533b;
        bff.d(str);
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    public void p(baw bawVar, int i) {
        int i2 = bawVar.f11195c;
        baw[] bawVarArr = (baw[]) this.f19536e;
        baw bawVar2 = bawVarArr[i2];
        if (bawVar2 != null) {
            j(bawVar2, i);
        }
        bawVar.f11194b = false;
        bawVar.f11196d = i;
        bawVarArr[i2] = bawVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a9, code lost:
    
        if (r1 != r3) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String toString() {
        switch (this.f19535d) {
            case 1:
                StringBuilder sb = new StringBuilder();
                String str = (String) this.f19533b;
                if (str != null) {
                    sb.append(str);
                    sb.append("://");
                } else {
                    sb.append("//");
                }
                if (((String) this.f19534c).length() > 0 || ((String) this.f19536e).length() > 0) {
                    sb.append((String) this.f19534c);
                    if (((String) this.f19536e).length() > 0) {
                        sb.append(':');
                        sb.append((String) this.f19536e);
                    }
                    sb.append('@');
                }
                String str2 = (String) this.i;
                if (str2 != null) {
                    if (dcv.bg(str2, ':')) {
                        sb.append('[');
                        sb.append((String) this.i);
                        sb.append(']');
                    } else {
                        sb.append((String) this.i);
                    }
                }
                int i = -1;
                if (this.f19538g != -1 || ((String) this.f19533b) != null) {
                    int o = o();
                    String str3 = (String) this.f19533b;
                    if (str3 != null) {
                        if (str3.equals("http")) {
                            i = 80;
                            break;
                        } else if (str3.equals("https")) {
                            i = 443;
                            break;
                        }
                    }
                    sb.append(':');
                    sb.append(o);
                }
                ArrayList arrayList = (ArrayList) this.h;
                bff.p(arrayList, "<this>");
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    sb.append('/');
                    sb.append((String) arrayList.get(i2));
                }
                if (((ArrayList) this.f19532a) != null) {
                    sb.append('?');
                    ArrayList arrayList2 = (ArrayList) this.f19532a;
                    bff.d(arrayList2);
                    gpu.i(sb, arrayList2);
                }
                if (((String) this.f19537f) != null) {
                    sb.append('#');
                    sb.append((String) this.f19537f);
                }
                String sb2 = sb.toString();
                bff.e(sb2, "StringBuilder().apply(builderAction).toString()");
                return sb2;
            default:
                return super.toString();
        }
    }
}
