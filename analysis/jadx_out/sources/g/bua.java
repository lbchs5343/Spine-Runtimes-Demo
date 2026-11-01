package g;

import android.database.ContentObserver;
import android.os.Handler;

/* loaded from: classes3.dex */
public final class bua extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12209a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ bua(Handler handler, int i) {
        super(handler);
        this.f12209a = i;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        switch (this.f12209a) {
            case 0:
                gsj.f18687c.set(true);
                break;
            default:
                duh.f14824b.incrementAndGet();
                break;
        }
    }
}
