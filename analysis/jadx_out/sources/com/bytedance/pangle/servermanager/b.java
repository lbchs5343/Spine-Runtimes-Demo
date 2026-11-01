package com.bytedance.pangle.servermanager;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.service.quicksettings.TileService;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.c;
import com.bytedance.pangle.e;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.service.client.ServiceManagerNative;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private static final Object f1576a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private static final Object f1577b = new Object();

    /* renamed from: c, reason: collision with root package name */
    private static final Object f1578c = new Object();

    /* renamed from: d, reason: collision with root package name */
    private static final Map<String, Boolean> f1579d = new ConcurrentHashMap();

    /* renamed from: e, reason: collision with root package name */
    private static final Map<String, e> f1580e = new ConcurrentHashMap();

    /* renamed from: f, reason: collision with root package name */
    private static c f1581f;

    /* JADX WARN: Removed duplicated region for block: B:16:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0096 A[Catch: RemoteException -> 0x0080, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x0080, blocks: (B:14:0x0056, B:23:0x0091, B:26:0x0096, B:28:0x0076, B:31:0x0082), top: B:13:0x0056 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0082 A[Catch: RemoteException -> 0x0080, TryCatch #0 {RemoteException -> 0x0080, blocks: (B:14:0x0056, B:23:0x0091, B:26:0x0096, B:28:0x0076, B:31:0x0082), top: B:13:0x0056 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static IInterface a(String str, final String str2) {
        final IBinder iBinder;
        int hashCode;
        if (!Zeus.hasInit()) {
            throw new RuntimeException("generateServerManager 请先初始化Zeus, processName:".concat(String.valueOf(str2)));
        }
        ProviderInfo providerInfo = Zeus.getServerManagerHashMap().get(str2);
        if (providerInfo == null) {
            throw new RuntimeException("宿主中没有找对对应进程的serverManager ".concat(String.valueOf(str2)));
        }
        Bundle call = Zeus.getAppApplication().getContentResolver().call(Uri.parse("content://" + providerInfo.authority), "query_binder", str, (Bundle) null);
        if (call != null) {
            call.setClassLoader(AbsServerManager.class.getClassLoader());
            a aVar = (a) call.getParcelable("binder");
            if (aVar != null) {
                iBinder = aVar.f1575a;
                if (iBinder != null && iBinder.isBinderAlive()) {
                    try {
                        char c2 = 0;
                        iBinder.linkToDeath(new IBinder.DeathRecipient() { // from class: com.bytedance.pangle.servermanager.b.1
                            @Override // android.os.IBinder.DeathRecipient
                            public final void binderDied() {
                                b.f1579d.put(str2, Boolean.FALSE);
                                ZeusLogger.w(ZeusLogger.TAG_SERVER, "generateServerManager binderDied.");
                                HashMap<ServiceConnection, HashSet<ComponentName>> hashMap = ServiceManagerNative.getInstance().process2ConnAndService.get(iBinder);
                                if (hashMap != null) {
                                    for (ServiceConnection serviceConnection : hashMap.keySet()) {
                                        Iterator<ComponentName> it = hashMap.get(serviceConnection).iterator();
                                        while (it.hasNext()) {
                                            serviceConnection.onServiceDisconnected(it.next());
                                        }
                                    }
                                }
                            }
                        }, 0);
                        f1579d.put(str2, Boolean.TRUE);
                        hashCode = str.hashCode();
                        if (hashCode == -807062458) {
                            if (hashCode == 1984153269 && str.equals(TileService.EXTRA_SERVICE)) {
                                c2 = 1;
                                if (c2 != 0) {
                                    return c.a.a(iBinder);
                                }
                                if (c2 == 1) {
                                    return e.a.a(iBinder);
                                }
                            }
                            c2 = 65535;
                            if (c2 != 0) {
                            }
                        } else {
                            if (str.equals("package")) {
                                if (c2 != 0) {
                                }
                            }
                            c2 = 65535;
                            if (c2 != 0) {
                            }
                        }
                    } catch (RemoteException e2) {
                        ZeusLogger.errReport(ZeusLogger.TAG_SERVER, "generateServerManager failed.", e2);
                    }
                }
                return null;
            }
        }
        iBinder = null;
        if (iBinder != null) {
            char c22 = 0;
            iBinder.linkToDeath(new IBinder.DeathRecipient() { // from class: com.bytedance.pangle.servermanager.b.1
                @Override // android.os.IBinder.DeathRecipient
                public final void binderDied() {
                    b.f1579d.put(str2, Boolean.FALSE);
                    ZeusLogger.w(ZeusLogger.TAG_SERVER, "generateServerManager binderDied.");
                    HashMap<ServiceConnection, HashSet<ComponentName>> hashMap = ServiceManagerNative.getInstance().process2ConnAndService.get(iBinder);
                    if (hashMap != null) {
                        for (ServiceConnection serviceConnection : hashMap.keySet()) {
                            Iterator<ComponentName> it = hashMap.get(serviceConnection).iterator();
                            while (it.hasNext()) {
                                serviceConnection.onServiceDisconnected(it.next());
                            }
                        }
                    }
                }
            }, 0);
            f1579d.put(str2, Boolean.TRUE);
            hashCode = str.hashCode();
            if (hashCode == -807062458) {
            }
        }
        return null;
    }

    public static c a() {
        Boolean bool = f1579d.get("main");
        if (bool == null || !bool.booleanValue()) {
            f1581f = null;
        }
        if (f1581f == null) {
            synchronized (f1578c) {
                try {
                    c cVar = (c) a("package", "main");
                    if (cVar == null) {
                        ZeusLogger.errReport(ZeusLogger.TAG_SERVER, "getPackageManager failed!!!");
                        return null;
                    }
                    f1581f = cVar;
                } finally {
                }
            }
        }
        return f1581f;
    }

    public static e a(String str) {
        Boolean bool = f1579d.get(str);
        if (bool == null || !bool.booleanValue()) {
            f1580e.remove(str);
        }
        Map<String, e> map = f1580e;
        if (map.get(str) == null) {
            synchronized (f1577b) {
                try {
                    e eVar = (e) a(TileService.EXTRA_SERVICE, str);
                    if (eVar == null) {
                        ZeusLogger.errReport(ZeusLogger.TAG_SERVER, "getServiceManager failed!!!");
                        return null;
                    }
                    map.put(str, eVar);
                } finally {
                }
            }
        }
        return map.get(str);
    }
}
