package ms.bz.bd.c.Pgl;

import android.content.Context;
import java.io.File;
import java.util.HashSet;
import ms.bz.bd.c.Pgl.pblt;

/* loaded from: classes.dex */
public class pblu {

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f21193a = new HashSet();

    /* renamed from: b, reason: collision with root package name */
    public final pblt.pblb f21194b;

    /* renamed from: c, reason: collision with root package name */
    public final pblr f21195c;

    class pgla implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    public pblu(pblt.pblb pblbVar, pblr pblrVar) {
        this.f21194b = pblbVar;
        this.f21195c = pblrVar;
    }

    public final File d(Context context) {
        ((pblw) this.f21194b).getClass();
        return new File(com.bytedance.sdk.openadsdk.api.plugin.d.dq(context, "lib", 0), System.mapLibraryName("Pglbizssdk_ml"));
    }
}
