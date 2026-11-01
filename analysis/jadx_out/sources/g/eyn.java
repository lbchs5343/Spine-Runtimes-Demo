package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class eyn {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f16371a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: b, reason: collision with root package name */
    public final String f16372b;

    /* renamed from: c, reason: collision with root package name */
    public final String f16373c;

    /* renamed from: d, reason: collision with root package name */
    public final int f16374d;

    /* renamed from: e, reason: collision with root package name */
    public final String f16375e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f16376f;

    /* renamed from: g, reason: collision with root package name */
    public final String f16377g;
    public final String h;
    public final boolean i;
    public final String j;
    public final List k;

    public eyn(String str, String str2, String str3, String str4, int i, ArrayList arrayList, ArrayList arrayList2, String str5, String str6) {
        bff.p(str, "scheme");
        bff.p(str4, "host");
        this.f16375e = str;
        this.h = str2;
        this.j = str3;
        this.f16373c = str4;
        this.f16374d = i;
        this.f16376f = arrayList;
        this.k = arrayList2;
        this.f16372b = str5;
        this.f16377g = str6;
        this.i = str.equals("https");
    }

    public final boolean equals(Object obj) {
        return (obj instanceof eyn) && bff.n(((eyn) obj).f16377g, this.f16377g);
    }

    public final int hashCode() {
        return this.f16377g.hashCode();
    }

    public final URI l() {
        String substring;
        ke keVar = new ke(1);
        ArrayList arrayList = (ArrayList) keVar.h;
        String str = this.f16375e;
        keVar.f19533b = str;
        keVar.f19534c = n();
        keVar.f19536e = o();
        keVar.i = this.f16373c;
        bff.p(str, "scheme");
        int i = str.equals("http") ? 80 : str.equals("https") ? 443 : -1;
        int i2 = this.f16374d;
        keVar.f19538g = i2 != i ? i2 : -1;
        arrayList.clear();
        arrayList.addAll(r());
        String m = m();
        keVar.f19532a = m != null ? gpu.j(gpu.k(0, 0, MediaPlayer.MEDIA_PLAYER_OPTION_BUFFERING_BEFORE_FIRST_FRAME, m, " \"'<>#")) : null;
        if (this.f16372b == null) {
            substring = null;
        } else {
            String str2 = this.f16377g;
            substring = str2.substring(dcv.bh(str2, '#', 0, 6) + 1);
            bff.e(substring, "this as java.lang.String).substring(startIndex)");
        }
        keVar.f19537f = substring;
        String str3 = (String) keVar.i;
        keVar.i = str3 != null ? new hu("[\"<>^`{|}]").b(str3) : null;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            arrayList.set(i3, gpu.k(0, 0, 227, (String) arrayList.get(i3), "[]"));
        }
        ArrayList arrayList2 = (ArrayList) keVar.f19532a;
        if (arrayList2 != null) {
            int size2 = arrayList2.size();
            for (int i4 = 0; i4 < size2; i4++) {
                String str4 = (String) arrayList2.get(i4);
                arrayList2.set(i4, str4 != null ? gpu.k(0, 0, MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO, str4, "\\^`{|}") : null);
            }
        }
        String str5 = (String) keVar.f19537f;
        keVar.f19537f = str5 != null ? gpu.k(0, 0, MediaPlayer.MEDIA_PLAYER_OPTION_GET_AUDIO_DEVICE_OPENED_TIME, str5, " \"#<>\\^`{|}") : null;
        String keVar2 = keVar.toString();
        try {
            return new URI(keVar2);
        } catch (URISyntaxException e2) {
            try {
                URI create = URI.create(new hu("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]").b(keVar2));
                bff.e(create, "{\n      // Unlikely edge…Unexpected!\n      }\n    }");
                return create;
            } catch (Exception unused) {
                throw new RuntimeException(e2);
            }
        }
    }

    public final String m() {
        if (this.k == null) {
            return null;
        }
        String str = this.f16377g;
        int bh = dcv.bh(str, '?', 0, 6) + 1;
        String substring = str.substring(bh, erq.ae(str, bh, str.length(), '#'));
        bff.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public final String n() {
        if (this.h.length() == 0) {
            return "";
        }
        int length = this.f16375e.length() + 3;
        String str = this.f16377g;
        String substring = str.substring(length, erq.t(length, str.length(), str, ":@"));
        bff.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public final String o() {
        if (this.j.length() == 0) {
            return "";
        }
        int length = this.f16375e.length() + 3;
        String str = this.f16377g;
        String substring = str.substring(dcv.bh(str, ':', length, 4) + 1, dcv.bh(str, '@', 0, 6));
        bff.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public final ke p(String str) {
        bff.p(str, "link");
        try {
            ke keVar = new ke(1);
            keVar.m(this, str);
            return keVar;
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public final String q() {
        int length = this.f16375e.length() + 3;
        String str = this.f16377g;
        int bh = dcv.bh(str, '/', length, 4);
        String substring = str.substring(bh, erq.t(bh, str.length(), str, "?#"));
        bff.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public final ArrayList r() {
        int length = this.f16375e.length() + 3;
        String str = this.f16377g;
        int bh = dcv.bh(str, '/', length, 4);
        int t = erq.t(bh, str.length(), str, "?#");
        ArrayList arrayList = new ArrayList();
        while (bh < t) {
            int i = bh + 1;
            int ae = erq.ae(str, i, t, '/');
            String substring = str.substring(i, ae);
            bff.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            arrayList.add(substring);
            bh = ae;
        }
        return arrayList;
    }

    public final String s() {
        ke p = p("/...");
        bff.d(p);
        p.f19534c = gpu.k(0, 0, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_PROCESSOR_ADDR, "", " \"':;<=>@[]^`{}|/\\?#");
        p.f19536e = gpu.k(0, 0, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_PROCESSOR_ADDR, "", " \"':;<=>@[]^`{}|/\\?#");
        return p.n().f16377g;
    }

    public final String toString() {
        return this.f16377g;
    }
}
