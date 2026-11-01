package com.bytedance.pangle.transform;

import androidx.annotation.Keep;
import androidx.fragment.app.u;

@Keep
/* loaded from: classes.dex */
public class HostPartUtils {
    private Class fragmentActivityClazz;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final HostPartUtils f1617a = new HostPartUtils();
    }

    public HostPartUtils() {
        try {
            this.fragmentActivityClazz = u.class;
        } catch (Throwable unused) {
        }
    }

    public static u getFragmentActivity(Object obj, String str) {
        return (u) ZeusTransformUtils._getActivity(obj, str);
    }

    public static final Class getFragmentActivityClass() {
        return a.f1617a.fragmentActivityClazz;
    }
}
