package g;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;

/* loaded from: classes3.dex */
public final class bmp extends dae {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ adw f11835a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bmp(adw adwVar, Looper looper) {
        super(looper, 6);
        this.f11835a = adwVar;
    }

    @Override // g.dae, android.os.Handler
    public final void handleMessage(Message message) {
        Boolean bool;
        if (this.f11835a.n.get() != message.arg1) {
            int i = message.what;
            if (i == 2 || i == 1 || i == 7) {
                haf hafVar = (haf) message.obj;
                hafVar.getClass();
                hafVar.k();
                return;
            }
            return;
        }
        int i2 = message.what;
        if ((i2 == 1 || i2 == 7 || i2 == 4 || i2 == 5) && !this.f11835a.isConnecting()) {
            haf hafVar2 = (haf) message.obj;
            hafVar2.getClass();
            hafVar2.k();
            return;
        }
        int i3 = message.what;
        if (i3 == 4) {
            this.f11835a.x = new nk(message.arg2);
            adw adwVar = this.f11835a;
            if (!adwVar.ae && !TextUtils.isEmpty(adwVar.a()) && !TextUtils.isEmpty(null)) {
                try {
                    Class.forName(adwVar.a());
                    adw adwVar2 = this.f11835a;
                    if (!adwVar2.ae) {
                        adwVar2.al(3, null);
                        return;
                    }
                } catch (ClassNotFoundException unused) {
                }
            }
            nk nkVar = this.f11835a.x;
            if (nkVar == null) {
                nkVar = new nk(8);
            }
            this.f11835a.f10066g._ck(nkVar);
            this.f11835a.ak(nkVar);
            return;
        }
        if (i3 == 5) {
            nk nkVar2 = this.f11835a.x;
            if (nkVar2 == null) {
                nkVar2 = new nk(8);
            }
            this.f11835a.f10066g._ck(nkVar2);
            this.f11835a.ak(nkVar2);
            return;
        }
        if (i3 == 3) {
            Object obj = message.obj;
            nk nkVar3 = new nk(message.arg2, obj instanceof PendingIntent ? (PendingIntent) obj : null);
            this.f11835a.f10066g._ck(nkVar3);
            this.f11835a.ak(nkVar3);
            return;
        }
        if (i3 == 6) {
            this.f11835a.al(5, null);
            bjb bjbVar = this.f11835a.r;
            if (bjbVar != null) {
                bjbVar.onConnectionSuspended(message.arg2);
            }
            adw adwVar3 = this.f11835a;
            adwVar3.w = message.arg2;
            adwVar3.f10064ab = System.currentTimeMillis();
            adw.aj(this.f11835a, 5, 1, null);
            return;
        }
        if (i3 == 2 && !this.f11835a.isConnected()) {
            haf hafVar3 = (haf) message.obj;
            hafVar3.getClass();
            hafVar3.k();
            return;
        }
        int i4 = message.what;
        if (i4 != 2 && i4 != 1 && i4 != 7) {
            Log.wtf("GmsClient", awf.ac(i4, "Don't know how to handle message: "), new Exception());
            return;
        }
        haf hafVar4 = (haf) message.obj;
        synchronized (hafVar4) {
            try {
                bool = hafVar4.f19112g;
                if (hafVar4.i) {
                    hafVar4.toString();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (bool != null) {
            adw adwVar4 = hafVar4.h;
            int i5 = hafVar4.f19110e;
            if (i5 != 0) {
                adwVar4.al(1, null);
                Bundle bundle = hafVar4.f19111f;
                hafVar4.b(new nk(i5, bundle != null ? (PendingIntent) bundle.getParcelable(adw.KEY_PENDING_INTENT) : null));
            } else if (!hafVar4.c()) {
                adwVar4.al(1, null);
                hafVar4.b(new nk(8, null));
            }
        }
        synchronized (hafVar4) {
            hafVar4.i = true;
        }
        hafVar4.k();
    }
}
