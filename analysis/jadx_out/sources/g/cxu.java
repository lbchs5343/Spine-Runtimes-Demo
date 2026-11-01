package g;

import android.content.Context;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class cxu implements deg {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13715a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13716b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f13717c;

    public cxu(int i, AtomicBoolean atomicBoolean) {
        this.f13716b = i;
        this.f13717c = atomicBoolean;
    }

    public cxu(ctt cttVar, int i) {
        this.f13717c = cttVar;
        this.f13716b = i;
    }

    @Override // g.deg
    public final void d(String str, Throwable th) {
        switch (this.f13715a) {
            case 0:
                if (th != null) {
                    erl.ac(th);
                }
                bew.r(null, this.f13716b);
                break;
            default:
                ctt cttVar = (ctt) this.f13717c;
                if (this.f13716b == cttVar.h && !((IdentityHashMap) cttVar.i).isEmpty()) {
                    cttVar.f13490d = false;
                    cttVar.k();
                    cttVar.m(3000L);
                    break;
                }
                break;
        }
    }

    /* JADX WARN: Type inference failed for: r10v2, types: [g.hdn] */
    @Override // g.deg
    public final void onSuccess(Object obj) {
        switch (this.f13715a) {
            case 0:
                final ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) obj;
                int i = bew.f11417e;
                final int i2 = this.f13716b;
                if (i2 == i) {
                    bew.f11419g = parcelFileDescriptor;
                    bew.f11413a = new Runnable() { // from class: g.hdn
                        @Override // java.lang.Runnable
                        public final void run() {
                            bew.r(null, i2);
                        }
                    };
                    bew.f11418f.postDelayed(bew.f11413a, 20000L);
                    final long uptimeMillis = SystemClock.uptimeMillis() + 20000;
                    ExecutorService as = ffb.as();
                    final AtomicBoolean atomicBoolean = (AtomicBoolean) this.f13717c;
                    final int i3 = this.f13716b;
                    as.execute(new Runnable() { // from class: g.emy
                        @Override // java.lang.Runnable
                        public final void run() {
                            ParcelFileDescriptor parcelFileDescriptor2 = parcelFileDescriptor;
                            long j = uptimeMillis;
                            AtomicBoolean atomicBoolean2 = atomicBoolean;
                            he heVar = null;
                            try {
                                Cfor cfor = new Cfor(parcelFileDescriptor2, j, atomicBoolean2);
                                try {
                                    heVar = egh.ai(cfor);
                                    cfor.close();
                                } finally {
                                }
                            } catch (Exception e2) {
                                if (!atomicBoolean2.get()) {
                                    erl.ac(e2);
                                }
                            }
                            bew.f11418f.post(new cdl(heVar, i3, 0));
                        }
                    });
                    break;
                } else if (parcelFileDescriptor != null) {
                    try {
                        parcelFileDescriptor.close();
                        break;
                    } catch (IOException e2) {
                        erl.ac(e2);
                        return;
                    }
                }
                break;
            default:
                Bundle bundle = (Bundle) obj;
                ctt cttVar = (ctt) this.f13717c;
                int i4 = cttVar.h;
                IdentityHashMap identityHashMap = (IdentityHashMap) cttVar.i;
                if (this.f13716b == i4 && !identityHashMap.isEmpty()) {
                    cttVar.f13490d = false;
                    String string = bundle == null ? null : bundle.getString("package");
                    String string2 = bundle != null ? bundle.getString("class") : null;
                    if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2) && cttVar.l()) {
                        cttVar.f13493g = false;
                        Iterator it = new ArrayList(identityHashMap.values()).iterator();
                        while (it.hasNext()) {
                            bes besVar = (bes) it.next();
                            if (besVar.f11405c.ac()) {
                                besVar.f11406d = false;
                                besVar.f11404b = SystemClock.uptimeMillis();
                                if (!string.equals(besVar.f11408f) || !string2.equals(besVar.f11403a)) {
                                    besVar.f11408f = string;
                                    besVar.f11403a = string2;
                                    ejn ejnVar = new ejn();
                                    ejnVar.setEventType(32);
                                    ejnVar.setPackageName(string);
                                    ejnVar.setClassName(ern.i(string) ? ((Context) cttVar.f13488b).getString(R.string.hidden) : string2);
                                    ejn ejnVar2 = besVar.f11407e;
                                    ejnVar.setWindowTitle((ejnVar2 != null && TextUtils.equals(string, ejnVar2.getPackageName()) && TextUtils.equals(string2, ejnVar2.getClassName())) ? ejnVar2.getWindowTitle() : bundle.getString(abn.EXTRA_TITLE, ""));
                                    besVar.f11405c.q(ejnVar);
                                }
                            }
                        }
                        cttVar.m(300L);
                        break;
                    } else {
                        cttVar.k();
                        cttVar.m(3000L);
                        break;
                    }
                }
                break;
        }
    }
}
