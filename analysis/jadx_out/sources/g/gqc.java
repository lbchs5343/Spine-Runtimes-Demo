package g;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Parcel;
import android.util.JsonWriter;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzacg;
import com.google.android.gms.internal.ads.zzacs;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzfga;
import com.google.android.gms.internal.ads.zzgee;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.lang.reflect.Type;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public /* synthetic */ class gqc implements cx, yt, atc, dle, btp, zzgee, fbf, gpw {
    public final /* synthetic */ int aa;

    /* renamed from: ab, reason: collision with root package name */
    public int f18566ab;
    public Object z;

    public gqc(int i) {
        this.aa = i;
        switch (i) {
            case 8:
                this.f18566ab = 1023;
                this.z = new fpd[1024];
                break;
            case 12:
                this.f18566ab = 16383;
                this.z = new dsg[16384];
                az("$ref", 0, 4, 1185263);
                az("@type", 0, 5, 62680954);
                break;
            case 14:
                this.z = new zzed(8);
                break;
        }
    }

    public /* synthetic */ gqc(int i, Object obj) {
        this.aa = i;
        this.z = obj;
    }

    public /* synthetic */ gqc(int i, Object obj, int i2) {
        this.aa = i2;
        this.f18566ab = i;
        this.z = obj;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public gqc(Context context) {
        this(context, fpl.k(context, 0));
        this.aa = 2;
    }

    public gqc(Context context, int i) {
        this.aa = 2;
        this.z = new die(new ContextThemeWrapper(context, fpl.k(context, i)));
        this.f18566ab = i;
    }

    public gqc(nk nkVar, int i) {
        this.aa = 13;
        ckd.k(nkVar);
        this.z = nkVar;
        this.f18566ab = i;
    }

    public /* synthetic */ gqc(Object obj, int i, int i2) {
        this.aa = i2;
        this.z = obj;
        this.f18566ab = i;
    }

    public gqc(boolean z, boolean z2) {
        this.aa = 17;
        int i = 1;
        if (!z && !z2) {
            i = 0;
        }
        this.f18566ab = i;
    }

    public static int ac(int i) {
        if (i == 0) {
            return 2;
        }
        if (i == 1) {
            return 4;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 4) {
            return 3;
        }
        throw new gck(awf.ac(i, "Unexpected visibility flag: "));
    }

    public static gqc ad() {
        gqc gqcVar = new gqc(3);
        gqcVar.z = bld.DEFAULT;
        return gqcVar;
    }

    @Override // g.dle
    public void _bt(ggu gguVar) {
        boolean z;
        fw fwVar;
        int i;
        cqf cqfVar = (cqf) this.z;
        gqc gqcVar = gguVar.f18131g;
        int ar = gqcVar.ar();
        if (this.f18566ab == 4) {
            gqcVar.at(2);
        }
        fce fceVar = gguVar.i;
        fceVar.w = ar;
        if (cqfVar == cqf.INVOKE_CUSTOM) {
            dkb j = fceVar.j();
            fceVar.q = j;
            fwVar = (fw) ((ghr) j.f14297a.get(2)).f18176f;
            z = false;
        } else {
            ful d2 = fceVar.d();
            ((efh) d2).m();
            fceVar.q = d2;
            z = cqfVar != cqf.INVOKE_STATIC;
            fwVar = d2;
        }
        int size = fwVar.a().size();
        if (z) {
            size++;
        }
        fceVar.ad(size * 2);
        int[] iArr = fceVar.x;
        if (z) {
            iArr[0] = 1;
            i = 1;
        } else {
            i = 0;
        }
        Iterator it = fwVar.a().iterator();
        while (it.hasNext()) {
            char charAt = ((String) it.next()).charAt(0);
            char c2 = (charAt == 'J' || charAt == 'D') ? (char) 2 : (char) 1;
            int i2 = i + 1;
            iArr[i] = 1;
            if (c2 == 2) {
                i += 2;
                iArr[i2] = 0;
            } else {
                i = i2;
            }
        }
        fceVar.ad(i);
        for (int i3 = i - 1; i3 >= 0; i3--) {
            if (iArr[i3] == 1) {
                gguVar.n(i3);
            }
        }
        String b2 = fwVar.b();
        if (b2.equals("V")) {
            fceVar.z = -1;
        } else {
            fceVar.z = gguVar.f18125a.d((b2.equals("J") || b2.equals("D")) ? cqz.WIDE : cqz.NARROW);
        }
    }

    @Override // g.dle
    public /* synthetic */ void _ct(ggu gguVar) {
    }

    @Override // g.atc
    public void _cu(esv esvVar) {
        fbm fbmVar;
        dsg dsgVar = (dsg) this.z;
        akh akhVar = new akh(this, dsgVar.u());
        dsgVar.j(12);
        ByteBuffer byteBuffer = (ByteBuffer) dsgVar.f14704a;
        int i = byteBuffer.getInt();
        for (int i2 = 0; i2 < i; i2 += akhVar.f10380ab) {
            byteBuffer.position();
            int q = dsgVar.q();
            fbm[] fbmVarArr = fbm.f16516a;
            int i3 = q & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
            fbm fbmVar2 = (i3 != 0 || q == 0) ? fbm.f16516a[i3] : (fbm) fbm.f16517b.get(Integer.valueOf(q));
            akhVar.o = i2;
            akhVar.r = fbmVar2;
            akhVar.v = q;
            akhVar.q = null;
            akhVar.t = false;
            if (fbmVar2 != null) {
                fcn fcnVar = fbmVar2.f16521f;
                akhVar.z = fcnVar.ae;
                akhVar.f10380ab = fcnVar.ad;
            } else {
                akhVar.z = 0;
                akhVar.f10380ab = 1;
            }
            esvVar.n(akhVar);
            if (!akhVar.t && (fbmVar = akhVar.r) != null) {
                fcn fcnVar2 = fbmVar.f16521f;
                dsg dsgVar2 = (dsg) akhVar.u.z;
                switch (fcnVar2.af) {
                    case 19:
                        int q2 = dsgVar2.q();
                        dsgVar2.x((q2 * 4) + 4);
                        akhVar.f10380ab = (q2 * 2) + 4;
                        break;
                    case 20:
                        int q3 = dsgVar2.q();
                        dsgVar2.x(q3 * 8);
                        akhVar.f10380ab = (q3 * 4) + 2;
                        break;
                    case 21:
                    default:
                        int i4 = fcnVar2.ad;
                        if (i4 == 1) {
                            break;
                        } else {
                            dsgVar2.x((i4 - 1) * 2);
                            break;
                        }
                    case 22:
                        int q4 = dsgVar2.q();
                        int i5 = ((ByteBuffer) dsgVar2.f14704a).getInt();
                        if (q4 == 1) {
                            dsgVar2.x((i5 % 2) + i5);
                        } else {
                            dsgVar2.x(i5 * q4);
                        }
                        akhVar.f10380ab = (((i5 * q4) + 1) / 2) + 4;
                        break;
                }
            }
        }
    }

    @Override // g.cx
    public void a(dkp dkpVar) {
        if (this.f18566ab == ((haz) this.z).m) {
            ((haz) this.z).aa();
        }
    }

    public boolean ae() {
        return (this.f18566ab & 16) != 0;
    }

    public int af() {
        int i = this.f18566ab;
        byte[] bArr = (byte[]) this.z;
        byte b2 = bArr[i];
        byte b3 = bArr[i + 1];
        byte b4 = bArr[i + 2];
        byte b5 = bArr[i + 3];
        this.f18566ab = i + 4;
        return (b2 << 24) | ((b3 & 255) << 16) | ((b4 & 255) << 8) | (b5 & 255);
    }

    public boolean ag() {
        return (this.f18566ab & 16384) != 0;
    }

    public gqc ah(int i) {
        int i2 = this.f18566ab;
        return (i2 & i) != 0 ? new gqc((~i) & i2, (frh) this.z, 1) : this;
    }

    public int ai() {
        int i = this.f18566ab;
        byte[] bArr = (byte[]) this.z;
        byte b2 = bArr[i];
        byte b3 = bArr[i + 1];
        this.f18566ab = i + 2;
        return ((b2 & 255) << 8) | (b3 & 255);
    }

    public String aj(boolean z) {
        int i = this.f18566ab;
        StringBuilder sb = new StringBuilder();
        if (an()) {
            sb.append("public ");
        }
        if (al()) {
            sb.append("private ");
        }
        if (ao()) {
            sb.append("protected ");
        }
        if (be()) {
            sb.append("static ");
        }
        if (ae()) {
            sb.append("final ");
        }
        if ((i & 1024) != 0) {
            sb.append("abstract ");
        }
        if ((i & 256) != 0) {
            sb.append("native ");
        }
        int i2 = cuy.f13565a[((frh) this.z).ordinal()];
        if (i2 == 1) {
            if ((131104 & i) != 0) {
                sb.append("synchronized ");
            }
            if (z && (i & 64) != 0) {
                sb.append("/* bridge */ ");
            }
        } else if (i2 == 2) {
            if ((i & 64) != 0) {
                sb.append("volatile ");
            }
            if ((i & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0) {
                sb.append("transient ");
            }
        } else if (i2 == 3) {
            if ((i & 2048) != 0) {
                sb.append("strict ");
            }
            if (z) {
                if ((262144 & i) != 0) {
                    sb.append("/* data */ ");
                }
                if ((i & 32768) != 0) {
                    sb.append("/* module-info */ ");
                }
            }
        }
        if (bb() && z) {
            sb.append("/* synthetic */ ");
        }
        return sb.toString();
    }

    public fpl ak() {
        fpl r = r();
        r.show();
        return r;
    }

    public boolean al() {
        return (this.f18566ab & 2) != 0;
    }

    public gqc am(int i) {
        die dieVar = (die) this.z;
        dieVar.f14221f = dieVar.i.getText(i);
        return this;
    }

    public boolean an() {
        return (this.f18566ab & 1) != 0;
    }

    public boolean ao() {
        return (this.f18566ab & 4) != 0;
    }

    public int ap() {
        int i = this.f18566ab;
        byte b2 = ((byte[]) this.z)[i];
        this.f18566ab = i + 1;
        return b2 & 255;
    }

    public String aq(ewi ewiVar) {
        bpy bpyVar = (bpy) this.z;
        int i = this.f18566ab;
        try {
            if (bpyVar.bl == null) {
                throw null;
            }
            exa exaVar = bpyVar.bl;
            String packageName = bpyVar.bj.getPackageName();
            String str = i != 2 ? i != 3 ? i != 4 ? i != 5 ? i != 6 ? "QUERY_PRODUCT_DETAILS_ASYNC" : "START_CONNECTION" : "IS_FEATURE_SUPPORTED" : "CONSUME_ASYNC" : "ACKNOWLEDGE_PURCHASE" : "LAUNCH_BILLING_FLOW";
            kw kwVar = new kw(ewiVar);
            gld gldVar = (gld) exaVar;
            Parcel _cc = gldVar._cc();
            _cc.writeString(packageName);
            _cc.writeString(str);
            int i2 = kz.f19577a;
            _cc.writeStrongBinder(kwVar);
            try {
                gldVar._cb.transact(1, _cc, null, 1);
                _cc.recycle();
                return "billingOverrideService.getBillingOverride";
            } catch (Throwable th) {
                _cc.recycle();
                throw th;
            }
        } catch (Exception unused) {
            bpyVar.bq(hm.BILLING_OVERRIDE_SERVICE_CALL_EXCEPTION, 28, edc.r);
            int i3 = gbs.f17875a;
            ewiVar.e(0);
            return "billingOverrideService.getBillingOverride";
        }
    }

    public int ar() {
        int i = this.f18566ab;
        byte[] bArr = (byte[]) this.z;
        byte b2 = bArr[i];
        byte b3 = bArr[i + 1];
        this.f18566ab = i + 2;
        return (b2 << 8) | (b3 & 255);
    }

    public Object as(Type type) {
        for (fpd fpdVar = ((fpd[]) this.z)[System.identityHashCode(type) & this.f18566ab]; fpdVar != null; fpdVar = (fpd) fpdVar.f17188d) {
            if (type == ((Type) fpdVar.f17190f)) {
                return fpdVar.f17187c;
            }
        }
        return null;
    }

    public void at(int i) {
        this.f18566ab += i;
    }

    public boolean au() {
        return this.f18566ab < ((ArrayList) this.z).size();
    }

    public List av(gkr gkrVar) {
        int ai = ai();
        if (ai == 0) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(ai);
        for (int i = 0; i < ai; i++) {
            arrayList.add(gkrVar.h(ai()));
        }
        return arrayList;
    }

    public gqc aw(int i, DialogInterface.OnClickListener onClickListener) {
        die dieVar = (die) this.z;
        dieVar.o = dieVar.i.getResources().getTextArray(i);
        dieVar.y = onClickListener;
        return this;
    }

    public long ax() {
        return ((bc() & 4294967295L) << 32) | (4294967295L & bc());
    }

    public gqc ay(int i, DialogInterface.OnClickListener onClickListener) {
        die dieVar = (die) this.z;
        dieVar.x = dieVar.i.getText(i);
        dieVar.f14216a = onClickListener;
        return this;
    }

    public String az(String str, int i, int i2, int i3) {
        int i4 = this.f18566ab & i3;
        dsg[] dsgVarArr = (dsg[]) this.z;
        dsg dsgVar = dsgVarArr[i4];
        if (dsgVar == null) {
            if (i2 != str.length()) {
                char[] cArr = new char[i2];
                str.getChars(i, i2 + i, cArr, 0);
                str = new String(cArr);
            }
            String intern = str.intern();
            dsgVarArr[i4] = new dsg(intern, i3);
            return intern;
        }
        String str2 = (String) dsgVar.f14704a;
        if (i3 == dsgVar.f14707d && i2 == ((char[]) dsgVar.f14705b).length && str.regionMatches(i, str2, 0, i2)) {
            return str2;
        }
        char[] cArr2 = new char[i2];
        str.getChars(i, i2 + i, cArr2, 0);
        return new String(cArr2);
    }

    @Override // g.fbf
    public void b(JsonWriter jsonWriter) {
        int i = this.f18566ab;
        Map map = (Map) this.z;
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name(PluginConstants.KEY_ERROR_CODE).value(i);
        jsonWriter.endObject();
        dzz.f(jsonWriter, map);
        jsonWriter.endObject();
    }

    public boolean ba() {
        return (this.f18566ab & 512) != 0;
    }

    public boolean bb() {
        return (this.f18566ab & 4096) != 0;
    }

    public int bc() {
        int i = this.f18566ab;
        byte[] bArr = (byte[]) this.z;
        byte b2 = bArr[i];
        byte b3 = bArr[i + 1];
        byte b4 = bArr[i + 2];
        byte b5 = bArr[i + 3];
        this.f18566ab = i + 4;
        return ((b2 & 255) << 24) | ((b3 & 255) << 16) | ((b4 & 255) << 8) | (b5 & 255);
    }

    public void bd(Type type, Object obj) {
        int identityHashCode = System.identityHashCode(type) & this.f18566ab;
        fpd[] fpdVarArr = (fpd[]) this.z;
        for (fpd fpdVar = fpdVarArr[identityHashCode]; fpdVar != null; fpdVar = (fpd) fpdVar.f17188d) {
            if (type == ((Type) fpdVar.f17190f)) {
                fpdVar.f17187c = obj;
                return;
            }
        }
        fpdVarArr[identityHashCode] = new fpd((Object) type, obj, (Object) fpdVarArr[identityHashCode], 5, false);
    }

    public boolean be() {
        return (this.f18566ab & 8) != 0;
    }

    public boolean bf() {
        return (this.f18566ab & 65536) != 0;
    }

    public bnd bg() {
        return new bnd(this.f18566ab, (bld) this.z);
    }

    public long bh(zzacs zzacsVar) {
        int i;
        zzed zzedVar = (zzed) this.z;
        zzacg zzacgVar = (zzacg) zzacsVar;
        int i2 = 0;
        zzacgVar.zzm(zzedVar.zzN(), 0, 1, false);
        int i3 = zzedVar.zzN()[0] & 255;
        if (i3 == 0) {
            return Long.MIN_VALUE;
        }
        int i4 = TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
        int i5 = 0;
        while (true) {
            i = i5 + 1;
            if ((i3 & i4) != 0) {
                break;
            }
            i4 >>= 1;
            i5 = i;
        }
        int i6 = i3 & (~i4);
        zzacgVar.zzm(zzedVar.zzN(), 1, i5, false);
        while (i2 < i5) {
            i2++;
            i6 = (zzedVar.zzN()[i2] & 255) + (i6 << 8);
        }
        this.f18566ab += i;
        return i6;
    }

    @Override // g.yt
    public boolean c(View view) {
        ((BottomSheetBehavior) this.z).bz(this.f18566ab);
        return true;
    }

    @Override // g.atc
    public List e() {
        int i;
        dsg dsgVar = (dsg) this.z;
        ByteBuffer byteBuffer = (ByteBuffer) dsgVar.f14704a;
        dsgVar.j(6);
        if (dsgVar.q() == 0) {
            i = -1;
        } else {
            int l = l();
            i = (l * 2) + 16 + (l % 2 == 1 ? 2 : 0);
        }
        if (i == -1) {
            return Collections.EMPTY_LIST;
        }
        dsgVar.j(6);
        int q = dsgVar.q();
        dsg u = dsgVar.u();
        dsgVar.j((q * 8) + i);
        int position = byteBuffer.position();
        int u2 = byh.u(dsgVar);
        HashMap hashMap = new HashMap(u2);
        for (int i2 = 0; i2 < u2; i2++) {
            int position2 = byteBuffer.position() - position;
            int r = dsgVar.r();
            int abs = Math.abs(r);
            int[] iArr = new int[abs];
            String[] strArr = new String[abs];
            for (int i3 = 0; i3 < abs; i3++) {
                strArr[i3] = u.g(byh.u(dsgVar));
                iArr[i3] = byh.u(dsgVar);
            }
            hashMap.put(Integer.valueOf(position2), new avx(r <= 0 ? byh.u(dsgVar) : -1, strArr, iArr));
        }
        dsgVar.j(i);
        ArrayList arrayList = new ArrayList(q);
        for (int i4 = 0; i4 < q; i4++) {
            int i5 = byteBuffer.getInt();
            int q2 = dsgVar.q();
            int q3 = dsgVar.q();
            avx avxVar = (avx) hashMap.get(Integer.valueOf(q3));
            if (avxVar == null) {
                throw new beo(awf.ac(q3, "Catch handler not found by byte offset: "));
            }
            arrayList.add(new dwc(i5, (q2 + i5) - 1, avxVar));
        }
        return arrayList;
    }

    @Override // g.atc
    public int f() {
        dsg dsgVar = (dsg) this.z;
        dsgVar.j(0);
        return dsgVar.q();
    }

    @Override // g.atc
    public int g() {
        return -1;
    }

    @Override // g.btp
    public void i(x xVar) {
        dmr.k((dmr) this.z, true);
    }

    @Override // g.atc
    public int j() {
        return ((dsg) this.z).f14707d;
    }

    @Override // g.atc
    public atc k() {
        gqc gqcVar = new gqc(7, ((dsg) this.z).u());
        gqcVar.f18566ab = this.f18566ab;
        return gqcVar;
    }

    @Override // g.atc
    public int l() {
        dsg dsgVar = (dsg) this.z;
        dsgVar.j(12);
        return ((ByteBuffer) dsgVar.f14704a).getInt();
    }

    @Override // g.atc
    public gtb m() {
        List w;
        int r;
        dsg dsgVar = (dsg) this.z;
        dsgVar.j(8);
        ByteBuffer byteBuffer = (ByteBuffer) dsgVar.f14704a;
        int i = byteBuffer.getInt();
        if (i == 0) {
            return null;
        }
        if (i < 0 || i > byteBuffer.capacity()) {
            throw new gqp("Invalid debug info offset");
        }
        int f2 = f();
        ke keVar = new ke(dsgVar, f2, l());
        int i2 = keVar.f19538g;
        int i3 = this.f18566ab;
        asu asuVar = ((eyc) dsgVar.f14705b).f16358a;
        dsgVar.m((i3 * 8) + asuVar.i + 2);
        dsgVar.m((dsgVar.q() * 12) + asuVar.f10770e + 8);
        int i4 = byteBuffer.getInt();
        if (i4 == 0) {
            w = Collections.EMPTY_LIST;
        } else {
            byteBuffer.position(i4);
            w = dsgVar.w();
        }
        int i5 = 1;
        if (w.isEmpty()) {
            keVar.f19532a = Collections.EMPTY_LIST;
        } else {
            int[] iArr = new int[w.size()];
            for (int i6 = r2 - 1; i6 >= 0; i6--) {
                char charAt = ((String) w.get(i6)).charAt(0);
                f2 -= (charAt == 'D' || charAt == 'J') ? 2 : 1;
                iArr[i6] = f2;
            }
            keVar.f19537f = iArr;
            keVar.f19532a = w;
        }
        dsg dsgVar2 = (dsg) keVar.f19534c;
        baw[] bawVarArr = (baw[]) keVar.f19536e;
        dsg dsgVar3 = (dsg) keVar.f19533b;
        dsgVar3.m(i);
        keVar.h = new ArrayList();
        keVar.i = new HashMap();
        int u = byh.u(dsgVar3);
        int u2 = byh.u(dsgVar3);
        int size = ((List) keVar.f19532a).size();
        int i7 = 0;
        boolean z = false;
        while (i7 < u2) {
            String z2 = dsgVar2.z(byh.u(dsgVar3) - i5);
            if (z2 != null && i7 < size) {
                baw bawVar = new baw(((int[]) keVar.f19537f)[i7], z2, (String) ((List) keVar.f19532a).get(i7), null);
                keVar.p(bawVar, 0);
                bawVar.f11196d = -1;
                z = true;
            }
            i7++;
            i5 = 1;
        }
        int i8 = 0;
        while (true) {
            int aa = dsgVar3.aa();
            if (aa == 0) {
                if (z) {
                    for (baw bawVar2 : bawVarArr) {
                        if (bawVar2 != null && !bawVar2.f11194b) {
                            keVar.j(bawVar2, i2 - 1);
                        }
                    }
                }
                return new gtb((HashMap) keVar.i, 5, (ArrayList) keVar.h);
            }
            switch (aa) {
                case 1:
                    i8 = Math.min(byh.u(dsgVar3) + i8, i2 - 1);
                    break;
                case 2:
                    r = dsgVar3.r() + u;
                    u = r;
                    break;
                case 3:
                    keVar.p(new baw((dsg) keVar.f19534c, byh.u(dsgVar3), byh.u(dsgVar3) - 1, byh.u(dsgVar3) - 1, -1), i8);
                    z = true;
                    break;
                case 4:
                    keVar.p(new baw((dsg) keVar.f19534c, byh.u(dsgVar3), byh.u(dsgVar3) - 1, byh.u(dsgVar3) - 1, byh.u(dsgVar3) - 1), i8);
                    z = true;
                    break;
                case 5:
                    baw bawVar3 = bawVarArr[byh.u(dsgVar3)];
                    if (bawVar3 != null) {
                        keVar.j(bawVar3, i8);
                    }
                    z = true;
                    break;
                case 6:
                    int u3 = byh.u(dsgVar3);
                    baw bawVar4 = bawVarArr[u3];
                    if (bawVar4 != null) {
                        keVar.j(bawVar4, i8);
                        keVar.p(new baw(u3, bawVar4.f11197e, bawVar4.f11198f, bawVar4.f11193a), i8);
                    }
                    z = true;
                    break;
                case 7:
                case 8:
                    break;
                case 9:
                    dsgVar2.z(byh.u(dsgVar3) - 1);
                    break;
                default:
                    i8 = Math.min(((aa - 10) / 15) + i8, i2 - 1);
                    r = ((r9 % 15) - 4) + u;
                    ((HashMap) keVar.i).put(Integer.valueOf(i8), Integer.valueOf(r));
                    u = r;
                    break;
            }
        }
    }

    @Override // g.btp
    public void o(int i) {
        dmr.j((dmr) this.z, this.f18566ab == 0, i);
    }

    @Override // g.cx
    public void onSuccess(Object obj) {
        if (this.f18566ab == ((haz) this.z).m) {
            ((haz) this.z).aa();
        }
    }

    public fpl r() {
        ListAdapter listAdapter;
        die dieVar = (die) this.z;
        ContextThemeWrapper contextThemeWrapper = dieVar.i;
        ContextThemeWrapper contextThemeWrapper2 = dieVar.i;
        fpl fplVar = new fpl(contextThemeWrapper, this.f18566ab);
        View view = dieVar.h;
        bgn bgnVar = fplVar.j;
        if (view != null) {
            bgnVar.af = view;
        } else {
            CharSequence charSequence = dieVar.f14221f;
            if (charSequence != null) {
                bgnVar.i = charSequence;
                TextView textView = bgnVar.q;
                if (textView != null) {
                    textView.setText(charSequence);
                }
            }
            Drawable drawable = dieVar.v;
            if (drawable != null) {
                bgnVar.f11522ab = drawable;
                ImageView imageView = bgnVar.n;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    bgnVar.n.setImageDrawable(drawable);
                }
            }
        }
        CharSequence charSequence2 = dieVar.m;
        if (charSequence2 != null) {
            bgnVar.l = charSequence2;
            TextView textView2 = bgnVar.r;
            if (textView2 != null) {
                textView2.setText(charSequence2);
            }
        }
        CharSequence charSequence3 = dieVar.x;
        if (charSequence3 != null) {
            bgnVar.al(-1, dieVar.f14216a, charSequence3);
        }
        CharSequence charSequence4 = dieVar.q;
        if (charSequence4 != null) {
            bgnVar.al(-2, dieVar.s, charSequence4);
        }
        CharSequence charSequence5 = dieVar.f14217b;
        if (charSequence5 != null) {
            bgnVar.al(-3, dieVar.f14222g, charSequence5);
        }
        if (dieVar.o != null || dieVar.t != null) {
            AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView) dieVar.r.inflate(bgnVar.j, (ViewGroup) null);
            if (dieVar.k) {
                listAdapter = new nv(dieVar, contextThemeWrapper2, bgnVar.p, dieVar.o, alertController$RecycleListView);
            } else {
                int i = dieVar.l ? bgnVar.o : bgnVar.ae;
                listAdapter = dieVar.t;
                if (listAdapter == null) {
                    listAdapter = new ayd(contextThemeWrapper2, i, R.id.text1, dieVar.o);
                }
            }
            bgnVar.f11527f = listAdapter;
            bgnVar.f11521a = dieVar.w;
            if (dieVar.y != null) {
                alertController$RecycleListView.setOnItemClickListener(new gmd(dieVar, bgnVar));
            } else if (dieVar.f14219d != null) {
                alertController$RecycleListView.setOnItemClickListener(new eke(dieVar, alertController$RecycleListView, bgnVar));
            }
            if (dieVar.l) {
                alertController$RecycleListView.setChoiceMode(1);
            } else if (dieVar.k) {
                alertController$RecycleListView.setChoiceMode(2);
            }
            bgnVar.s = alertController$RecycleListView;
        }
        View view2 = dieVar.u;
        if (view2 != null) {
            bgnVar.ag = view2;
            bgnVar.f11523b = 0;
            bgnVar.w = false;
        } else {
            int i2 = dieVar.n;
            if (i2 != 0) {
                bgnVar.ag = null;
                bgnVar.f11523b = i2;
                bgnVar.w = false;
            }
        }
        fplVar.setCancelable(dieVar.p);
        if (dieVar.p) {
            fplVar.setCanceledOnTouchOutside(true);
        }
        fplVar.setOnCancelListener(null);
        fplVar.setOnDismissListener(dieVar.f14220e);
        dgg dggVar = dieVar.f14218c;
        if (dggVar != null) {
            fplVar.setOnKeyListener(dggVar);
        }
        return fplVar;
    }

    public String toString() {
        switch (this.aa) {
            case 1:
                return "AccessInfo: " + ((frh) this.z) + " 0x" + Integer.toHexString(this.f18566ab) + " (" + aj(true) + ')';
            default:
                return super.toString();
        }
    }

    @Override // g.gpw
    public boolean u(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported(str);
    }

    @Override // g.gpw
    public boolean w(String str, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureRequired(str);
    }

    public void x(int i, DialogInterface.OnClickListener onClickListener) {
        die dieVar = (die) this.z;
        dieVar.q = dieVar.i.getText(i);
        dieVar.s = onClickListener;
    }

    @Override // g.gpw
    public int zza() {
        if (((MediaCodecInfo[]) this.z) == null) {
            this.z = new MediaCodecList(this.f18566ab).getCodecInfos();
        }
        return ((MediaCodecInfo[]) this.z).length;
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        ti.f20033a.f20034ab.zzw(th, "BufferingUrlPinger.attributionReportingManager");
    }

    @Override // g.gpw
    public MediaCodecInfo zzb(int i) {
        if (((MediaCodecInfo[]) this.z) == null) {
            this.z = new MediaCodecList(this.f18566ab).getCodecInfos();
        }
        return ((MediaCodecInfo[]) this.z)[i];
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public /* bridge */ /* synthetic */ void zzb(Object obj) {
        int i = this.f18566ab;
        ((zzfga) this.z).zzb((String) obj, i);
    }

    @Override // g.gpw
    /* renamed from: zze */
    public boolean mo11zze() {
        return true;
    }
}
