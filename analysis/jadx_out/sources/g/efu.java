package g;

import android.os.IInterface;
import android.os.RemoteCallbackList;
import androidx.room.MultiInstanceInvalidationService;

/* loaded from: classes.dex */
public final class efu extends RemoteCallbackList {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MultiInstanceInvalidationService f15461a;

    public efu(MultiInstanceInvalidationService multiInstanceInvalidationService) {
        this.f15461a = multiInstanceInvalidationService;
    }

    @Override // android.os.RemoteCallbackList
    public final void onCallbackDied(IInterface iInterface, Object obj) {
        bff.p((fuh) iInterface, "callback");
        bff.p(obj, "cookie");
        this.f15461a.f326d.remove((Integer) obj);
    }
}
