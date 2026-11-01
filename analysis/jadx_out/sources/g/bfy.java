package g;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.JsonReader;
import com.google.firebase.components.ComponentRegistrar;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;

/* loaded from: classes3.dex */
public final class bfy implements afe, eya, cce, auz, aii, gyi, gtx {
    public static volatile bfy v;

    /* renamed from: ab, reason: collision with root package name */
    public final /* synthetic */ int f11486ab;
    public static final bfy l = new bfy(1);
    public static final bfy q = new bfy(2);
    public static final bfy r = new bfy(3);
    public static final bfy aa = new bfy(4);

    /* renamed from: g, reason: collision with root package name */
    public static final bfy f11485g = new bfy(5);

    /* renamed from: d, reason: collision with root package name */
    public static final bfy f11482d = new bfy(6);
    public static final /* synthetic */ bfy u = new bfy(7);
    public static final /* synthetic */ bfy k = new bfy(8);
    public static final /* synthetic */ bfy n = new bfy(9);
    public static final /* synthetic */ bfy m = new bfy(10);
    public static final /* synthetic */ bfy z = new bfy(11);
    public static final /* synthetic */ bfy w = new bfy(12);
    public static final /* synthetic */ bfy j = new bfy(13);

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ bfy f11483e = new bfy(14);
    public static final /* synthetic */ bfy y = new bfy(15);
    public static final /* synthetic */ bfy s = new bfy(16);
    public static final /* synthetic */ bfy p = new bfy(17);

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ bfy f11484f = new bfy(18);
    public static final /* synthetic */ bfy o = new bfy(19);
    public static final /* synthetic */ bfy i = new bfy(20);
    public static final /* synthetic */ bfy x = new bfy(21);
    public static final /* synthetic */ bfy t = new bfy(22);
    public static final bfy h = new bfy(23);

    public /* synthetic */ bfy(int i2) {
        this.f11486ab = i2;
    }

    public static bfy ac(Context context, int i2) {
        if (!(i2 != 0)) {
            throw new IllegalArgumentException("Cannot create a CalendarItemStyle with a styleResId of 0");
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i2, git.aj);
        Rect rect = new Rect(obtainStyledAttributes.getDimensionPixelOffset(0, 0), obtainStyledAttributes.getDimensionPixelOffset(2, 0), obtainStyledAttributes.getDimensionPixelOffset(1, 0), obtainStyledAttributes.getDimensionPixelOffset(3, 0));
        gs.ai(context, obtainStyledAttributes, 4);
        gs.ai(context, obtainStyledAttributes, 9);
        gs.ai(context, obtainStyledAttributes, 7);
        obtainStyledAttributes.getDimensionPixelSize(8, 0);
        cjg.m(context, obtainStyledAttributes.getResourceId(5, 0), obtainStyledAttributes.getResourceId(6, 0), new ett(0)).n();
        obtainStyledAttributes.recycle();
        bfy bfyVar = new bfy(26);
        acw.bm(rect.left);
        acw.bm(rect.top);
        acw.bm(rect.right);
        acw.bm(rect.bottom);
        return bfyVar;
    }

    @Override // g.gyi
    public boolean a(SSLSocket sSLSocket) {
        return dmc.bw(sSLSocket.getClass().getName(), "com.google.android.gms.org.conscrypt.", false);
    }

    public void ad(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                ad(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete " + file2);
            }
        }
    }

    public void ae(File file, File file2) {
        bff.p(file, "from");
        bff.p(file2, "to");
        ai(file2);
        if (file.renameTo(file2)) {
            return;
        }
        throw new IOException("failed to rename " + file + " to " + file2);
    }

    public dgz af(File file) {
        bff.p(file, "file");
        int i2 = 1;
        try {
            Logger logger = aro.f10725a;
            return new dgz(new FileOutputStream(file, false), i2, new dme());
        } catch (FileNotFoundException unused) {
            file.getParentFile().mkdirs();
            Logger logger2 = aro.f10725a;
            return new dgz(new FileOutputStream(file, false), i2, new dme());
        }
    }

    public boolean ag(File file) {
        bff.p(file, "file");
        return file.exists();
    }

    public List ah(ComponentRegistrar componentRegistrar) {
        ArrayList arrayList = new ArrayList();
        for (bdf bdfVar : componentRegistrar.getComponents()) {
            bdfVar.getClass();
            arrayList.add(bdfVar);
        }
        return arrayList;
    }

    public void ai(File file) {
        bff.p(file, "file");
        if (file.delete() || !file.exists()) {
            return;
        }
        throw new IOException("failed to delete " + file);
    }

    @Override // g.eya
    public Object ak(Object obj) {
        ((ehi) obj).close();
        return null;
    }

    @Override // g.cce
    public Object an(JsonReader jsonReader, float f2) {
        return Float.valueOf(cux.ac(jsonReader) * f2);
    }

    @Override // g.gtx
    public Object ao() {
        switch (this.f11486ab) {
            case 28:
                return new ArrayDeque();
            default:
                return new LinkedHashMap();
        }
    }

    @Override // g.gyi
    public est b(SSLSocket sSLSocket) {
        Class<?> cls = sSLSocket.getClass();
        Class<?> cls2 = cls;
        while (!cls2.getSimpleName().equals("OpenSSLSocketImpl")) {
            cls2 = cls2.getSuperclass();
            if (cls2 == null) {
                throw new AssertionError("No OpenSSLSocketImpl superclass of socket of type " + cls);
            }
        }
        return new fnm(cls2);
    }

    @Override // g.auz
    public String c(String str, String str2) {
        return null;
    }

    public String toString() {
        switch (this.f11486ab) {
            case 3:
                return "FileSystem.SYSTEM";
            default:
                return super.toString();
        }
    }

    @Override // g.aii
    public Object zza() {
        switch (this.f11486ab) {
            case 8:
                List list = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                Long l2 = (Long) biy.w.k();
                l2.getClass();
                return l2;
            case 9:
                List list2 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                Long l3 = (Long) biy.f11676e.k();
                l3.getClass();
                return l3;
            case 10:
                List list3 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                Long l4 = (Long) biy.o.k();
                l4.getClass();
                return l4;
            case 11:
                List list4 = gad.z;
                ((chr) dkm.f14314a.zza()).getClass();
                Boolean bool = (Boolean) chr.f12897c.k();
                bool.getClass();
                return bool;
            case 12:
                List list5 = gad.z;
                ((chr) dkm.f14314a.zza()).getClass();
                Double d2 = (Double) chr.f12898d.k();
                d2.getClass();
                return d2;
            case 13:
                List list6 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                Long l5 = (Long) biy.u.k();
                l5.getClass();
                return l5;
            case 14:
                List list7 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                return Integer.valueOf((int) ((Long) biy.p.k()).longValue());
            case 15:
                List list8 = gad.z;
                ((bxp) ((wy) nn.f19710a.f19711b.zza())).getClass();
                Boolean bool2 = (Boolean) bxp.f12395a.k();
                bool2.getClass();
                return bool2;
            case 16:
                List list9 = gad.z;
                ((gjl) ((buw) dbc.f13906a.f13907b.zza())).getClass();
                return Integer.valueOf((int) ((Long) gjl.f18254a.k()).longValue());
            case 17:
                List list10 = gad.z;
                ((aie) ((hdr) eaj.f15185a.f15186b.zza())).getClass();
                Boolean bool3 = (Boolean) aie.f10257b.k();
                bool3.getClass();
                return bool3;
            case 18:
                List list11 = gad.z;
                ((hcx) fui.f17432a.zza()).getClass();
                Boolean bool4 = (Boolean) hcx.i.k();
                bool4.getClass();
                return bool4;
            case 19:
                List list12 = gad.z;
                ((dpp) ((gxu) eur.f16195a.f16196b.zza())).getClass();
                Boolean bool5 = (Boolean) dpp.f14603b.k();
                bool5.getClass();
                return bool5;
            case 20:
                List list13 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                return Integer.valueOf((int) ((Long) biy.ad.k()).longValue());
            case 21:
                List list14 = gad.z;
                ((hcx) fui.f17432a.zza()).getClass();
                Boolean bool6 = (Boolean) hcx.f19240b.k();
                bool6.getClass();
                return bool6;
            default:
                List list15 = gad.z;
                ((biy) cki.f13030a.zza()).getClass();
                return Integer.valueOf((int) ((Long) biy.j.k()).longValue());
        }
    }
}
