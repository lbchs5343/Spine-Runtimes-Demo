package g;

import android.os.IBinder;

/* loaded from: classes3.dex */
public final /* synthetic */ class emv implements IBinder.DeathRecipient {
    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        gwn.m = false;
        gwn.r(null, null);
    }
}
