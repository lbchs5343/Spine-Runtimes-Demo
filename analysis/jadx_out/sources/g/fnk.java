package g;

import java.util.HashSet;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* loaded from: classes.dex */
public abstract class fnk implements fgp {

    /* renamed from: d, reason: collision with root package name */
    public static final HashSet f17081d = new HashSet();

    /* renamed from: e, reason: collision with root package name */
    public final String f17082e;

    /* renamed from: f, reason: collision with root package name */
    public final String f17083f;

    public fnk(String str, String str2) {
        this.f17082e = str;
        this.f17083f = str2;
        f17081d.add(this);
    }

    public abstract boolean b();

    public boolean c() {
        return BoundaryInterfaceReflectionUtil.containsFeature(ejz.f15696a, this.f17083f);
    }
}
