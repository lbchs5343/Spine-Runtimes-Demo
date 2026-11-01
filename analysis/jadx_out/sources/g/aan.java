package g;

import android.accounts.Account;
import android.content.Context;
import android.os.Handler;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

/* loaded from: classes3.dex */
public final class aan extends cwp implements fwr, dko {

    /* renamed from: a, reason: collision with root package name */
    public static final gzt f9857a = ayc.f11052a;

    /* renamed from: b, reason: collision with root package name */
    public axs f9858b;

    /* renamed from: d, reason: collision with root package name */
    public cdq f9859d;

    /* renamed from: e, reason: collision with root package name */
    public final Handler f9860e;

    /* renamed from: f, reason: collision with root package name */
    public final gzt f9861f;

    /* renamed from: g, reason: collision with root package name */
    public final Set f9862g;
    public final Context h;
    public final daw i;

    public aan(Context context, dae daeVar, daw dawVar) {
        super(1);
        attachInterface(this, "com.google.android.gms.signin.internal.ISignInCallbacks");
        this.h = context;
        this.f9860e = daeVar;
        this.i = dawVar;
        this.f9862g = (Set) dawVar.f13886e;
        this.f9861f = f9857a;
    }

    @Override // g.fwr
    public final void j() {
        GoogleSignInAccount googleSignInAccount;
        Parcel obtain;
        Parcel obtain2;
        cdq cdqVar = this.f9859d;
        cdqVar.getClass();
        try {
            cdqVar.ar.getClass();
            Account account = new Account(adw.DEFAULT_ACCOUNT, "com.google");
            try {
                if (adw.DEFAULT_ACCOUNT.equals(account.name)) {
                    Context context = cdqVar.getContext();
                    ReentrantLock reentrantLock = abg.f9918b;
                    ckd.k(context);
                    ReentrantLock reentrantLock2 = abg.f9918b;
                    reentrantLock2.lock();
                    try {
                        if (abg.f9917a == null) {
                            abg.f9917a = new abg(context.getApplicationContext());
                        }
                        abg abgVar = abg.f9917a;
                        reentrantLock2.unlock();
                        String e2 = abgVar.e("defaultGoogleSignInAccount");
                        if (!TextUtils.isEmpty(e2)) {
                            String e3 = abgVar.e("googleSignInAccount:" + e2);
                            if (e3 != null) {
                                try {
                                    googleSignInAccount = GoogleSignInAccount.zab(e3);
                                } catch (JSONException unused) {
                                }
                                Integer num = cdqVar.ap;
                                ckd.k(num);
                                fty ftyVar = new fty(account, num.intValue(), googleSignInAccount);
                                cta ctaVar = (cta) cdqVar.getService();
                                eto etoVar = new eto(1, ftyVar);
                                ctaVar.getClass();
                                obtain = Parcel.obtain();
                                obtain.writeInterfaceToken(ctaVar.f19749c);
                                int i = gui.f18774a;
                                obtain.writeInt(1);
                                etoVar.writeToParcel(obtain, 0);
                                obtain.writeStrongBinder(this);
                                obtain2 = Parcel.obtain();
                                ctaVar._cb.transact(12, obtain, obtain2, 0);
                                obtain2.readException();
                                obtain.recycle();
                                obtain2.recycle();
                                return;
                            }
                        }
                    } catch (Throwable th) {
                        reentrantLock2.unlock();
                        throw th;
                    }
                }
                ctaVar._cb.transact(12, obtain, obtain2, 0);
                obtain2.readException();
                obtain.recycle();
                obtain2.recycle();
                return;
            } catch (Throwable th2) {
                obtain.recycle();
                obtain2.recycle();
                throw th2;
            }
            googleSignInAccount = null;
            Integer num2 = cdqVar.ap;
            ckd.k(num2);
            fty ftyVar2 = new fty(account, num2.intValue(), googleSignInAccount);
            cta ctaVar2 = (cta) cdqVar.getService();
            eto etoVar2 = new eto(1, ftyVar2);
            ctaVar2.getClass();
            obtain = Parcel.obtain();
            obtain.writeInterfaceToken(ctaVar2.f19749c);
            int i2 = gui.f18774a;
            obtain.writeInt(1);
            etoVar2.writeToParcel(obtain, 0);
            obtain.writeStrongBinder(this);
            obtain2 = Parcel.obtain();
        } catch (RemoteException e4) {
            try {
                this.f9860e.post(new efr(this, 10, new gpi(1, new nk(8, null), null)));
            } catch (RemoteException unused2) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e4);
            }
        }
    }

    @Override // g.dko
    public final void onConnectionFailed(nk nkVar) {
        this.f9858b.l(nkVar);
    }

    @Override // g.fwr
    public final void onConnectionSuspended(int i) {
        axs axsVar = this.f9858b;
        fbd fbdVar = (fbd) ((ecd) axsVar.f11039f).f15294g.get((dzu) axsVar.f11037d);
        if (fbdVar != null) {
            if (fbdVar.k) {
                fbdVar.w(new nk(17));
            } else {
                fbdVar.onConnectionSuspended(i);
            }
        }
    }
}
