package g;

import com.bytedance.sdk.openadsdk.TTAdSdk;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentLinkedQueue;

/* loaded from: classes3.dex */
public final class exe implements TTAdSdk.Callback {
    @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
    public final void fail(int i, String str) {
        eku.f15710a = false;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
    public final void success() {
        dms dmsVar;
        eku.f15710a = true;
        while (true) {
            ConcurrentLinkedQueue concurrentLinkedQueue = eku.f15712c;
            if (concurrentLinkedQueue.isEmpty()) {
                return;
            }
            fiy fiyVar = (fiy) concurrentLinkedQueue.poll();
            if (fiyVar != null) {
                WeakReference weakReference = fiyVar.f16869a;
                dms dmsVar2 = (dms) weakReference.get();
                if (dmsVar2 != null && !dmsVar2.isDestroyed() && (dmsVar = (dms) weakReference.get()) != null && !dmsVar.isDestroyed()) {
                    fiyVar.f16870b.run();
                }
            }
        }
    }
}
