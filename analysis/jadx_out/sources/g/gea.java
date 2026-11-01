package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class gea {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f17967a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f17968b = Pattern.compile("(.*/)?(\\.|%2e|%2E){1,2}(/.*)?");

    /* renamed from: c, reason: collision with root package name */
    public final boolean f17969c;

    /* renamed from: d, reason: collision with root package name */
    public sz f17970d;

    /* renamed from: e, reason: collision with root package name */
    public ke f17971e;

    /* renamed from: f, reason: collision with root package name */
    public final fzn f17972f = new fzn(7);

    /* renamed from: g, reason: collision with root package name */
    public final String f17973g;
    public final ais h;
    public final dzh i;
    public final eyn j;
    public final fdy k;
    public String l;
    public dpd m;

    public gea(String str, eyn eynVar, String str2, dvq dvqVar, dpd dpdVar, boolean z, boolean z2, boolean z3) {
        this.f17973g = str;
        this.j = eynVar;
        this.l = str2;
        this.m = dpdVar;
        this.f17969c = z;
        if (dvqVar != null) {
            this.h = dvqVar.f();
        } else {
            this.h = new ais(0);
        }
        if (z2) {
            this.k = new fdy(9);
            return;
        }
        if (z3) {
            dzh dzhVar = new dzh(8);
            this.i = dzhVar;
            dpd dpdVar2 = cso.f13444f;
            bff.p(dpdVar2, "type");
            if (dpdVar2.f14579d.equals("multipart")) {
                dzhVar.f15121f = dpdVar2;
            } else {
                throw new IllegalArgumentException(("multipart != " + dpdVar2).toString());
            }
        }
    }

    public final void n(String str, String str2, boolean z) {
        String str3 = this.l;
        if (str3 != null) {
            eyn eynVar = this.j;
            ke p = eynVar.p(str3);
            this.f17971e = p;
            if (p == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + eynVar + ", Relative: " + this.l);
            }
            this.l = null;
        }
        if (z) {
            ke keVar = this.f17971e;
            keVar.getClass();
            bff.p(str, "encodedName");
            if (((ArrayList) keVar.f19532a) == null) {
                keVar.f19532a = new ArrayList();
            }
            ArrayList arrayList = (ArrayList) keVar.f19532a;
            bff.d(arrayList);
            arrayList.add(gpu.k(0, 0, MediaPlayer.MEDIA_PLAYER_OPTION_BUFFERING_BEFORE_FIRST_FRAME, str, " \"'<>#&="));
            ArrayList arrayList2 = (ArrayList) keVar.f19532a;
            bff.d(arrayList2);
            arrayList2.add(str2 != null ? gpu.k(0, 0, MediaPlayer.MEDIA_PLAYER_OPTION_BUFFERING_BEFORE_FIRST_FRAME, str2, " \"'<>#&=") : null);
            return;
        }
        ke keVar2 = this.f17971e;
        keVar2.getClass();
        bff.p(str, abn.EXTRA_UA_APP_NAME);
        if (((ArrayList) keVar2.f19532a) == null) {
            keVar2.f19532a = new ArrayList();
        }
        ArrayList arrayList3 = (ArrayList) keVar2.f19532a;
        bff.d(arrayList3);
        arrayList3.add(gpu.k(0, 0, 219, str, " !\"#$&'(),/:;<=>?@[]\\^`{|}~"));
        ArrayList arrayList4 = (ArrayList) keVar2.f19532a;
        bff.d(arrayList4);
        arrayList4.add(str2 != null ? gpu.k(0, 0, 219, str2, " !\"#$&'(),/:;<=>?@[]\\^`{|}~") : null);
    }

    public final void o(String str, String str2, boolean z) {
        fdy fdyVar = this.k;
        if (z) {
            fdyVar.getClass();
            bff.p(str, abn.EXTRA_UA_APP_NAME);
            ((ArrayList) fdyVar.f16634c).add(gpu.k(0, 0, 83, str, " \"':;<=>@[]^`{}|/\\?#&!$(),~"));
            ((ArrayList) fdyVar.f16632a).add(gpu.k(0, 0, 83, str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~"));
            return;
        }
        fdyVar.getClass();
        bff.p(str, abn.EXTRA_UA_APP_NAME);
        ((ArrayList) fdyVar.f16634c).add(gpu.k(0, 0, 91, str, " \"':;<=>@[]^`{}|/\\?#&!$(),~"));
        ((ArrayList) fdyVar.f16632a).add(gpu.k(0, 0, 91, str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~"));
    }

    public final void p(String str, String str2, boolean z) {
        if ("Content-Type".equalsIgnoreCase(str)) {
            try {
                Pattern pattern = dpd.f14576a;
                this.m = acr.bb(str2);
                return;
            } catch (IllegalArgumentException e2) {
                throw new IllegalArgumentException(tn.x("Malformed content type: ", str2), e2);
            }
        }
        ais aisVar = this.h;
        if (z) {
            aisVar.c(str, str2);
        } else {
            aisVar.e(str, str2);
        }
    }

    public final void q(dvq dvqVar, sz szVar) {
        dzh dzhVar = this.i;
        dzhVar.getClass();
        bff.p(szVar, "body");
        if (dvqVar.c("Content-Type") != null) {
            throw new IllegalArgumentException("Unexpected header: Content-Type");
        }
        if (dvqVar.c("Content-Length") != null) {
            throw new IllegalArgumentException("Unexpected header: Content-Length");
        }
        ((ArrayList) dzhVar.f15122g).add(new bmb(dvqVar, szVar));
    }
}
