package g;

import android.os.Build;
import android.os.Bundle;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;

/* loaded from: classes.dex */
public final class dma extends InputConnectionWrapper {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ aoi f14413a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dma(InputConnection inputConnection, aoi aoiVar) {
        super(inputConnection, false);
        this.f14413a = aoiVar;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
        evf evfVar = null;
        if (inputContentInfo != null && Build.VERSION.SDK_INT >= 25) {
            evfVar = new evf(10, new blp(inputContentInfo));
        }
        if (this.f14413a.f(evfVar, i, bundle)) {
            return true;
        }
        return super.commitContent(inputContentInfo, i, bundle);
    }
}
