package com.bytedance.pangle.receiver;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.pangle.util.FieldUtils;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private static final c f1538a;

    public static class a implements c {
        private a() {
        }

        public /* synthetic */ a(byte b2) {
            this();
        }

        public static Object a(Context context, String str) {
            return a(b(context), str);
        }

        private static Object a(Object obj, String str) {
            if (obj == null) {
                return null;
            }
            try {
                return FieldUtils.readField(obj, str);
            } catch (Throwable unused) {
                return null;
            }
        }

        private static Object b(Context context) {
            Field field;
            Object readField;
            try {
                Field field2 = FieldUtils.getField(Class.forName("android.app.LoadedApk"), "mReceiverResource");
                if (field2 == null || (field = FieldUtils.getField(Class.forName("android.app.ContextImpl"), "mPackageInfo")) == null || (readField = FieldUtils.readField(field, context)) == null) {
                    return null;
                }
                return FieldUtils.readField(field2, readField);
            } catch (Throwable unused) {
                return null;
            }
        }

        @Override // com.bytedance.pangle.receiver.b.c
        public boolean a(Context context) {
            Object b2 = b(context);
            Object a2 = a(b2, "mWhiteList");
            if (!(a2 instanceof String[])) {
                if (b2 == null) {
                    return false;
                }
                FieldUtils.writeField(b2, "mResourceConfig", (Object) null);
                return false;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(context.getPackageName());
            Collections.addAll(arrayList, (String[]) a2);
            FieldUtils.writeField(b2, "mWhiteList", arrayList.toArray(new String[arrayList.size()]));
            return true;
        }
    }

    /* renamed from: com.bytedance.pangle.receiver.b$b, reason: collision with other inner class name */
    public static class C0100b extends e {
        private C0100b() {
            super((byte) 0);
        }

        public /* synthetic */ C0100b(byte b2) {
            this();
        }

        @Override // com.bytedance.pangle.receiver.b.e, com.bytedance.pangle.receiver.b.a, com.bytedance.pangle.receiver.b.c
        public final boolean a(Context context) {
            return false;
        }
    }

    public interface c {
        boolean a(Context context);
    }

    public static class d extends a {
        private d() {
            super((byte) 0);
        }

        public /* synthetic */ d(byte b2) {
            this();
        }

        @Override // com.bytedance.pangle.receiver.b.a, com.bytedance.pangle.receiver.b.c
        public final boolean a(Context context) {
            Object a2 = a.a(context, "mWhiteList");
            if (!(a2 instanceof List)) {
                return false;
            }
            ((List) a2).add(context.getPackageName());
            return true;
        }
    }

    public static class e extends a {
        private e() {
            super((byte) 0);
        }

        public /* synthetic */ e(byte b2) {
            this();
        }

        @Override // com.bytedance.pangle.receiver.b.a, com.bytedance.pangle.receiver.b.c
        public boolean a(Context context) {
            Object a2 = a.a(context, "mWhiteListMap");
            if (!(a2 instanceof Map)) {
                return false;
            }
            Map map = (Map) a2;
            List list = (List) map.get(0);
            if (list == null) {
                list = new ArrayList();
                map.put(0, list);
            }
            list.add(context.getPackageName());
            return true;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        byte b2 = 0;
        if (i < 24) {
            f1538a = new a(b2);
            return;
        }
        if (i < 26) {
            f1538a = new d(b2);
        } else if (i < 28) {
            f1538a = new e(b2);
        } else {
            f1538a = new C0100b(b2);
        }
    }

    public static void a(Application application) {
        if (application != null) {
            try {
                if (TextUtils.equals(Build.BRAND.toLowerCase(), "huawei")) {
                    f1538a.a(application.getBaseContext());
                }
            } catch (Throwable unused) {
            }
        }
    }
}
