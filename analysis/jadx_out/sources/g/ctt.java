package g;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import cn.trinea.developertools.MyApplication;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.IdentityHashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class ctt {

    /* renamed from: a, reason: collision with root package name */
    public final Object f13487a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f13488b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f13489c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f13490d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f13491e;

    /* renamed from: f, reason: collision with root package name */
    public final Object f13492f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f13493g;
    public int h;
    public final Object i;

    public ctt(MyApplication myApplication) {
        this.f13491e = new Handler(Looper.getMainLooper());
        this.i = new IdentityHashMap();
        final int i = 0;
        this.f13487a = new Runnable(this) { // from class: g.bzq

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ctt f12526b;

            {
                this.f12526b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i) {
                    case 0:
                        ctt cttVar = this.f12526b;
                        IdentityHashMap identityHashMap = (IdentityHashMap) cttVar.i;
                        if (!cttVar.f13490d && !identityHashMap.isEmpty()) {
                            Iterator it = identityHashMap.values().iterator();
                            boolean z = false;
                            while (it.hasNext()) {
                                z |= ((bes) it.next()).f11405c.ac();
                            }
                            if (!z) {
                                cttVar.m(1000L);
                                break;
                            } else if (!cttVar.l()) {
                                cttVar.k();
                                cttVar.m(1000L);
                                break;
                            } else {
                                cttVar.f13490d = true;
                                int i2 = cttVar.h;
                                ark arkVar = (ark) cttVar.f13489c;
                                cxu cxuVar = new cxu(cttVar, i2);
                                arkVar.getClass();
                                arkVar.m.post(new euq(arkVar, new gnl(new bco(1), cxuVar), 1));
                                break;
                            }
                        }
                        break;
                    default:
                        this.f12526b.m(0L);
                        break;
                }
            }
        };
        final int i2 = 1;
        this.f13492f = new Runnable(this) { // from class: g.bzq

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ctt f12526b;

            {
                this.f12526b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i2) {
                    case 0:
                        ctt cttVar = this.f12526b;
                        IdentityHashMap identityHashMap = (IdentityHashMap) cttVar.i;
                        if (!cttVar.f13490d && !identityHashMap.isEmpty()) {
                            Iterator it = identityHashMap.values().iterator();
                            boolean z = false;
                            while (it.hasNext()) {
                                z |= ((bes) it.next()).f11405c.ac();
                            }
                            if (!z) {
                                cttVar.m(1000L);
                                break;
                            } else if (!cttVar.l()) {
                                cttVar.k();
                                cttVar.m(1000L);
                                break;
                            } else {
                                cttVar.f13490d = true;
                                int i22 = cttVar.h;
                                ark arkVar = (ark) cttVar.f13489c;
                                cxu cxuVar = new cxu(cttVar, i22);
                                arkVar.getClass();
                                arkVar.m.post(new euq(arkVar, new gnl(new bco(1), cxuVar), 1));
                                break;
                            }
                        }
                        break;
                    default:
                        this.f12526b.m(0L);
                        break;
                }
            }
        };
        Context applicationContext = myApplication.getApplicationContext();
        this.f13488b = applicationContext;
        this.f13489c = ark.q(applicationContext);
    }

    public ctt(Class cls, Constructor constructor, Constructor constructor2, Method method, bnu[] bnuVarArr, bnu[] bnuVarArr2, ecz eczVar) {
        boolean z;
        this.f13490d = false;
        this.f13488b = constructor;
        this.f13489c = constructor2;
        this.f13491e = method;
        this.i = bnuVarArr;
        if (eczVar != null) {
            String typeName = eczVar.typeName();
            if (typeName.length() != 0) {
                this.f13492f = typeName;
            } else {
                this.f13492f = cls.getName();
            }
        } else {
            this.f13492f = cls.getName();
        }
        if (eczVar != null) {
            cbj[] parseFeatures = eczVar.parseFeatures();
            z = false;
            for (cbj cbjVar : parseFeatures) {
                if (cbjVar == cbj.SupportArrayToBean) {
                    z = true;
                }
            }
        } else {
            z = false;
        }
        this.f13493g = z;
        this.f13487a = Arrays.equals(bnuVarArr, bnuVarArr2) ? bnuVarArr : bnuVarArr2;
        this.h = constructor != null ? constructor.getParameterTypes().length : 0;
    }

    public static void j(ArrayList arrayList, bnu bnuVar) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            bnu bnuVar2 = (bnu) arrayList.get(i);
            if (bnuVar2.i.equals(bnuVar.i) && (!bnuVar2.j || bnuVar.j)) {
                return;
            }
        }
        arrayList.add(bnuVar);
    }

    public void k() {
        this.f13493g = true;
        Iterator it = new ArrayList(((IdentityHashMap) this.i).values()).iterator();
        while (it.hasNext()) {
            bes besVar = (bes) it.next();
            besVar.f11404b = 0L;
            gpv gpvVar = besVar.f11405c;
            besVar.f11408f = null;
            besVar.f11403a = null;
            if (gpvVar.ac() && !besVar.f11406d) {
                besVar.f11406d = true;
                gpvVar.ae();
            }
        }
    }

    public boolean l() {
        return bus.u((Context) this.f13488b) && ((ark) this.f13489c).w();
    }

    public void m(long j) {
        Handler handler = (Handler) this.f13491e;
        bzq bzqVar = (bzq) this.f13487a;
        handler.removeCallbacks(bzqVar);
        if (((IdentityHashMap) this.i).isEmpty()) {
            return;
        }
        handler.postDelayed(bzqVar, j);
    }
}
