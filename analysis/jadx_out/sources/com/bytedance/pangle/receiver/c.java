package com.bytedance.pangle.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.bytedance.pangle.log.ZeusLogger;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: d, reason: collision with root package name */
    private static c f1539d;

    /* renamed from: a, reason: collision with root package name */
    public final Map<String, a> f1540a = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    public final Map<PluginBroadcastReceiver, BroadcastReceiver> f1541b = new ConcurrentHashMap();

    /* renamed from: c, reason: collision with root package name */
    public final Set<Integer> f1542c = new CopyOnWriteArraySet();

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public String f1543a;

        /* renamed from: b, reason: collision with root package name */
        public final Set<PluginBroadcastReceiver> f1544b = new CopyOnWriteArraySet();

        public final void a(Context context, Intent intent) {
            Set<PluginBroadcastReceiver> set = this.f1544b;
            if (set == null || set.size() <= 0) {
                return;
            }
            for (PluginBroadcastReceiver pluginBroadcastReceiver : this.f1544b) {
                if (pluginBroadcastReceiver != null) {
                    try {
                        pluginBroadcastReceiver.onReceive(context, intent);
                    } catch (Throwable th) {
                        ZeusLogger.w(ZeusLogger.TAG_RECEIVER, "plugin-receiver->action:" + (intent != null ? intent.getAction() : "") + "[exception]:", th);
                    }
                }
            }
        }

        public final void a(PluginBroadcastReceiver pluginBroadcastReceiver) {
            if (pluginBroadcastReceiver != null) {
                this.f1544b.add(pluginBroadcastReceiver);
            }
        }
    }

    private c() {
    }

    public static c a() {
        if (f1539d == null) {
            synchronized (com.bytedance.pangle.service.a.a.class) {
                try {
                    if (f1539d == null) {
                        f1539d = new c();
                    }
                } finally {
                }
            }
        }
        return f1539d;
    }

    public final void a(Context context, Intent intent) {
        a value;
        if (intent == null || intent.getAction() == null) {
            return;
        }
        String action = intent.getAction();
        Map<String, a> map = this.f1540a;
        if (map == null || map.size() <= 0) {
            return;
        }
        for (Map.Entry<String, a> entry : this.f1540a.entrySet()) {
            if (action.equals(entry.getKey()) && (value = entry.getValue()) != null) {
                value.a(context, intent);
            }
        }
    }

    public final void a(IntentFilter intentFilter, PluginBroadcastReceiver pluginBroadcastReceiver) {
        if (intentFilter == null || intentFilter.actionsIterator() == null) {
            return;
        }
        Iterator<String> actionsIterator = intentFilter.actionsIterator();
        while (actionsIterator.hasNext()) {
            String next = actionsIterator.next();
            if (next != null) {
                a aVar = this.f1540a.get(next);
                if (aVar != null) {
                    aVar.a(pluginBroadcastReceiver);
                } else {
                    a aVar2 = new a();
                    aVar2.f1543a = next;
                    aVar2.a(pluginBroadcastReceiver);
                    this.f1540a.put(next, aVar2);
                }
            }
        }
    }
}
