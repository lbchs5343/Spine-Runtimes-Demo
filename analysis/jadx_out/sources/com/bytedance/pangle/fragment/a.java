package com.bytedance.pangle.fragment;

import androidx.fragment.app.Fragment;
import g.bcp;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
final class a {
    private static Class a(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    private static Field a(Class cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            if (declaredField != null) {
                declaredField.setAccessible(true);
            }
            return declaredField;
        } catch (NoSuchFieldException unused) {
            return null;
        }
    }

    public static void a(Class cls) {
        try {
            if (Fragment.class.getName().contains("support")) {
                ((bcp) a(Fragment.class, "sClassMap").get(null)).put(cls.getName(), cls);
                return;
            }
            Field a2 = a(Fragment.class, "sClassMap");
            if (a2 != null) {
                ((bcp) a2.get(null)).put(cls.getName(), cls);
                return;
            }
            Class a3 = a("androidx.fragment.app.FragmentFactory");
            if (a3 == null) {
                return;
            }
            Field a4 = a(a3, "sClassMap");
            if (a4 != null) {
                ((bcp) a4.get(null)).put(cls.getName(), cls);
                return;
            }
            Field a5 = a(a3, "sClassCacheMap");
            if (a5 != null) {
                bcp bcpVar = (bcp) a5.get(null);
                bcp bcpVar2 = new bcp(0);
                bcpVar2.put(cls.getName(), cls);
                bcpVar.put(cls.getClassLoader(), bcpVar2);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
