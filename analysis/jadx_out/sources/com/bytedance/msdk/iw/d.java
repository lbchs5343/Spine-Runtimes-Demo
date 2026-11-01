package com.bytedance.msdk.iw;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.d.s;
import com.bytedance.msdk.s.iw;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class d {
    private static final Map<String, Boolean> dq = new ConcurrentHashMap();

    public static boolean d(Class<?> cls, Class<?> cls2) {
        for (Class<? super Object> superclass = cls.getSuperclass(); superclass != null; superclass = superclass.getSuperclass()) {
            if (superclass == cls2) {
                return true;
            }
        }
        return false;
    }

    public static final synchronized boolean d(String str) {
        synchronized (d.class) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Boolean bool = dq.get(str);
            if (bool == null) {
                return false;
            }
            return bool.booleanValue();
        }
    }

    private static com.bytedance.msdk.api.p.dq.d.iw.dq dq(com.bytedance.msdk.api.p.dq.d.ox.d dVar, com.bytedance.msdk.dq.dq.ox oxVar) {
        com.bytedance.msdk.api.p.dq.d.iw.dq dq2 = com.bytedance.msdk.iw.d.dq.p().dq(dVar.d());
        if (dq2 == null) {
            if (com.bytedance.msdk.core.mp.dq.dq().ox()) {
                dq2 = new com.bytedance.msdk.dq.p.dq.d();
            } else if (dq((Class<?>) null)) {
                try {
                    Object newInstance = Class.forName(dVar.ox()).newInstance();
                    if (newInstance instanceof com.bytedance.msdk.api.p.dq.d.iw.dq) {
                        dq2 = (com.bytedance.msdk.api.p.dq.d.iw.dq) newInstance;
                    }
                } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e2) {
                    e2.printStackTrace();
                }
            }
            com.bytedance.msdk.iw.d.dq.p().dq(dVar.d(), dq2);
        }
        return dq2;
    }

    public static String dq(Class<?> cls, Class<?> cls2) {
        for (Method method : cls2.getMethods()) {
            HashSet hashSet = new HashSet();
            for (Method method2 : Object.class.getMethods()) {
                hashSet.add(method2.getName());
            }
            if (!hashSet.contains(method.getName())) {
                try {
                    cls.getMethod(method.getName(), method.getParameterTypes());
                } catch (NoSuchMethodException e2) {
                    e2.printStackTrace();
                    return "自定义ADN校验API失败接入API不符合版本需求，不符合的API的方法名为 " + method.getName();
                }
            }
        }
        return "";
    }

    public static synchronized void dq(Context context) {
        synchronized (d.class) {
            List<com.bytedance.msdk.core.no.dq> d2 = com.bytedance.msdk.mn.dq.dq.jy().d();
            if (d2 == null) {
                iw.dq("", (s) null, (com.bytedance.msdk.api.dq.d) null, (no) null, new com.bytedance.msdk.api.dq(49013, "获取的自定义Adapter总配置为null"));
                return;
            }
            for (com.bytedance.msdk.core.no.dq dqVar : d2) {
                final com.bytedance.msdk.api.p.dq.d.ox.d ox = dqVar.ox();
                try {
                    if (!d(dqVar.s())) {
                        dq(context, ox, new com.bytedance.msdk.dq.dq.ox() { // from class: com.bytedance.msdk.iw.d.1
                            @Override // com.bytedance.msdk.dq.dq.ox
                            public void dq() {
                                com.bytedance.msdk.iw.d.dq.dq(com.bytedance.msdk.api.p.dq.d.ox.d.this.d(), (Pair<Boolean, String>) new Pair(Boolean.TRUE, ""));
                            }

                            @Override // com.bytedance.msdk.dq.dq.ox
                            public void dq(com.bytedance.msdk.api.dq dqVar2) {
                                if (dqVar2 != null) {
                                    com.bytedance.msdk.iw.d.dq.dq(com.bytedance.msdk.api.p.dq.d.ox.d.this.d(), (Pair<Boolean, String>) new Pair(Boolean.FALSE, "errorCode = " + dqVar2.dq + " errorMessage = " + dqVar2.f756d));
                                }
                            }
                        });
                        dq(dqVar.s());
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    com.bytedance.msdk.iw.d.dq.dq(ox.d(), (Pair<Boolean, String>) new Pair(Boolean.FALSE, e2.toString()));
                    iw.dq(ox.d(), (s) null, (com.bytedance.msdk.api.dq.d) null, (no) null, new com.bytedance.msdk.api.dq(49013, e2.toString()));
                }
            }
        }
    }

    private static void dq(Context context, com.bytedance.msdk.api.p.dq.d.ox.d dVar, com.bytedance.msdk.api.p.dq.d.iw.dq dqVar) {
        if (context == null) {
            iw.dq(dVar.d(), (s) null, (com.bytedance.msdk.api.dq.d) null, (no) null, new com.bytedance.msdk.api.dq(49013, "context为null"));
            return;
        }
        try {
            dqVar.d(context.getApplicationContext(), dVar, com.bytedance.msdk.core.d.no().op());
        } catch (Exception e2) {
            iw.dq(dVar.d(), (s) null, (com.bytedance.msdk.api.dq.d) null, (no) null, new com.bytedance.msdk.api.dq(49013, "调用自定义Adapter初始化方法出现异常 ".concat(e2.getClass().getName())));
            e2.printStackTrace();
        }
    }

    private static void dq(Context context, com.bytedance.msdk.api.p.dq.d.ox.d dVar, com.bytedance.msdk.dq.dq.ox oxVar) throws Exception {
        if (dVar == null || TextUtils.isEmpty(dVar.ox())) {
            if (dVar != null) {
                throw new Exception("自定义ADN初始化失败，获取的自定义Adapter单条配置初始化类名为空");
            }
            throw new Exception("自定义ADN初始化失败，获取的自定义Adapter单条配置为null");
        }
        com.bytedance.msdk.api.p.dq.d.iw.dq dq2 = dq(dVar, oxVar);
        if (dq2 == null) {
            throw new Exception("GMCustomAdapterConfiguration is null");
        }
        if (!dq2.p()) {
            dq(context, dVar, dq2);
        }
        oxVar.dq();
    }

    public static synchronized void dq(Context context, String str) {
        synchronized (d.class) {
            if (!d(str)) {
                dq(context);
            }
        }
    }

    public static final synchronized void dq(String str) {
        synchronized (d.class) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            dq.put(str, Boolean.TRUE);
        }
    }

    private static boolean dq(Class<?> cls) {
        String dq2;
        if (d(cls, com.bytedance.msdk.api.p.dq.d.iw.dq.class)) {
            dq2 = dq(cls, (Class<?>) com.bytedance.msdk.api.p.dq.d.iw.dq.class);
        } else {
            dq2 = "自定义ADN初始化失败  ---------  初始化类 " + cls.getSimpleName() + " 需要继承自自定义ADN的初始化Adapter类 dq";
        }
        if (TextUtils.isEmpty(dq2)) {
            return true;
        }
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_SDK_Init", dq2);
        iw.dq("", (s) null, (com.bytedance.msdk.api.dq.d) null, (no) null, new com.bytedance.msdk.api.dq(49013, dq2));
        return false;
    }
}
