package com.bykv.vk.component.ttvideo;

import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.log.VideoEventEngineUploader;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderConfigure;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderListener;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderNotifyInfo;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLStartCompleteListener;
import com.bykv.vk.component.ttvideo.utils.Error;
import com.bykv.vk.component.ttvideo.utils.TTVideoEngineLog;
import g.awf;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public class DataLoaderHelper implements AVMDLDataLoaderListener, AVMDLStartCompleteListener {
    public static final int DATALOADER_KEY_ENABLE_ALOG = 512;
    public static final int DATALOADER_KEY_INT_MAXCACHESIZE = 1;
    public static final int DATALOADER_KEY_INT_OPENTIMEOUT = 3;
    public static final int DATALOADER_KEY_INT_PARALLEL_NUM = 11;
    public static final int DATALOADER_KEY_INT_RWTIMEOUT = 2;
    public static final int DATALOADER_KEY_INT_TRYCOUNT = 4;
    public static final int DATALOADER_KEY_SET_MDL_PROTOCOL_ENABLE = 1005;
    public static final int DATALOADER_KEY_STRING_CACHEDIR = 0;
    public static final int IsClose = 1;
    public static final int IsPlayTask = 1;
    public static final int IsPreloadTask = 2;
    public static final int IsStart = 0;
    public static final int IsUnknown = 0;
    public static final String MDL_PREFIX = "mdl://";
    private static final DataLoaderHelper p = new DataLoaderHelper();
    private static int q = 0;
    private static int r = 0;
    private static int s = 0;

    /* renamed from: b, reason: collision with root package name */
    private final d f413b;

    /* renamed from: c, reason: collision with root package name */
    private final d f414c;

    /* renamed from: d, reason: collision with root package name */
    private final d f415d;

    /* renamed from: e, reason: collision with root package name */
    private final d f416e;
    private AVMDLDataLoader i;
    private VideoEventEngineUploader k;
    private boolean m;

    /* renamed from: f, reason: collision with root package name */
    private final ConcurrentHashMap<String, c> f417f = new ConcurrentHashMap<>();

    /* renamed from: g, reason: collision with root package name */
    private final HashMap<String, ArrayList<TTVideoEngine>> f418g = new HashMap<>();
    private final ReentrantLock h = new ReentrantLock();
    private boolean l = true;
    private int n = 0;
    private final ReentrantLock o = new ReentrantLock();

    /* renamed from: a, reason: collision with root package name */
    private volatile int f412a = 1;
    private AVMDLDataLoaderConfigure j = AVMDLDataLoaderConfigure.getDefaultonfigure();

    public class DataLoaderCacheInfo {
        public long mMediaSize = 0;
        public long mCacheSizeFromZero = 0;
        public String mLocalFilePath = null;

        public DataLoaderCacheInfo(DataLoaderHelper dataLoaderHelper) {
        }
    }

    public static class DataLoaderTaskProgressInfo {
        public String mKey = null;
        public String mVideoId = null;
        public String mLocalFilePath = null;
        public long mMediaSize = 0;
        public long mCacheSizeFromZero = 0;
        public int mTaskType = 0;
    }

    public class b {

        /* renamed from: a, reason: collision with root package name */
        public String f419a = null;

        /* renamed from: b, reason: collision with root package name */
        public long f420b = 0;

        /* renamed from: c, reason: collision with root package name */
        public PreloaderURLItem f421c = null;

        /* renamed from: d, reason: collision with root package name */
        public boolean f422d = false;

        /* renamed from: e, reason: collision with root package name */
        public List<a> f423e = new CopyOnWriteArrayList();

        public class a {

            /* renamed from: a, reason: collision with root package name */
            public String f424a = null;

            /* renamed from: b, reason: collision with root package name */
            public String f425b = null;

            /* renamed from: c, reason: collision with root package name */
            public String[] f426c = null;

            /* renamed from: d, reason: collision with root package name */
            public String f427d = null;

            /* renamed from: e, reason: collision with root package name */
            public long f428e = 0;

            /* renamed from: f, reason: collision with root package name */
            public long f429f = 0;

            /* renamed from: g, reason: collision with root package name */
            public long f430g = 0;
            public long h = 0;
            public long i = 0;

            public a(b bVar) {
            }
        }

        public b(DataLoaderHelper dataLoaderHelper) {
        }

        public a a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            a b2 = b(str);
            if (b2 != null) {
                return b2;
            }
            a aVar = new a(this);
            aVar.f424a = str;
            this.f423e.add(aVar);
            return aVar;
        }

        public IPreLoaderItemCallBackListener a() {
            PreloaderURLItem preloaderURLItem = this.f421c;
            if (preloaderURLItem == null || preloaderURLItem.getCallBackListener() == null) {
                return null;
            }
            return this.f421c.getCallBackListener();
        }

        public void a(int i) {
            if (a() != null) {
                DataLoaderHelper.c();
                int unused = DataLoaderHelper.s;
                PreLoaderItemCallBackInfo preLoaderItemCallBackInfo = new PreLoaderItemCallBackInfo(3);
                preLoaderItemCallBackInfo.preloadError = new Error(Error.DataLoaderPreload, i);
                a().preloadItemInfo(preLoaderItemCallBackInfo);
            }
        }

        public void a(String str, long j) {
            if (this.f423e.size() == 0) {
                a aVar = new a(this);
                aVar.f424a = str;
                aVar.f430g = j;
                this.f423e.add(aVar);
            } else {
                TTVideoEngineLog.e("DataLoaderHelper", "[preload] DataLoaderTaskItem setup fail");
            }
            this.f420b = j;
        }

        public a b(String str) {
            if (this.f423e.size() <= 0) {
                return null;
            }
            for (int i = 0; i < this.f423e.size(); i++) {
                a aVar = this.f423e.get(i);
                if (aVar.f424a.equals(str)) {
                    return aVar;
                }
            }
            return null;
        }
    }

    public class c {

        /* renamed from: a, reason: collision with root package name */
        public String f431a;

        /* renamed from: b, reason: collision with root package name */
        public int f432b = 0;

        /* renamed from: c, reason: collision with root package name */
        public List<a> f433c = null;

        public class a {

            /* renamed from: e, reason: collision with root package name */
            public String f438e;

            /* renamed from: a, reason: collision with root package name */
            public String f434a = null;

            /* renamed from: b, reason: collision with root package name */
            public long f435b = 0;

            /* renamed from: c, reason: collision with root package name */
            public long f436c = 0;

            /* renamed from: d, reason: collision with root package name */
            public List<C0000a> f437d = null;

            /* renamed from: f, reason: collision with root package name */
            public Error f439f = null;

            /* renamed from: com.bykv.vk.component.ttvideo.DataLoaderHelper$c$a$a, reason: collision with other inner class name */
            public class C0000a {

                /* renamed from: a, reason: collision with root package name */
                public long f440a = 0;

                /* renamed from: b, reason: collision with root package name */
                public long f441b = 0;

                public C0000a(a aVar) {
                }
            }

            public a(c cVar) {
            }

            public void a(long j) {
                if (this.f437d == null) {
                    this.f437d = new ArrayList();
                }
                if (this.f437d.size() == 0) {
                    this.f437d.add(new C0000a(this));
                }
                this.f437d.get(0).f440a = 0L;
                this.f437d.get(0).f441b = j;
            }

            public boolean a() {
                long j = this.f436c;
                long min = j > 0 ? Math.min(j, this.f435b) : this.f435b;
                List<C0000a> list = this.f437d;
                C0000a c0000a = list != null ? (C0000a) awf.q(1, list) : null;
                return this.f439f != null || (c0000a != null && this.f435b > 0 && c0000a.f440a + c0000a.f441b >= min);
            }

            public long b() {
                List<C0000a> list = this.f437d;
                if (list == null || list.size() <= 0) {
                    return 0L;
                }
                return ((C0000a) awf.q(1, this.f437d)).f441b;
            }
        }

        public c(DataLoaderHelper dataLoaderHelper) {
        }

        private a a(String str) {
            List<a> list;
            if (TextUtils.isEmpty(str) || (list = this.f433c) == null) {
                return null;
            }
            for (a aVar : list) {
                if (aVar.f434a.equals(str)) {
                    return aVar;
                }
            }
            return null;
        }

        public long a() {
            long j = 0;
            if (this.f433c != null) {
                for (int i = 0; i < this.f433c.size(); i++) {
                    j += this.f433c.get(i).b();
                }
            }
            return j;
        }

        public void a(b bVar) {
            boolean z;
            if (this.f433c == null) {
                this.f433c = new ArrayList();
            }
            for (b.a aVar : bVar.f423e) {
                a a2 = a(aVar.f424a);
                if (a2 == null) {
                    a2 = new a(this);
                    z = false;
                } else {
                    z = true;
                }
                a2.f434a = aVar.f424a;
                a2.f435b = aVar.h;
                a2.a(aVar.i);
                a2.f436c = aVar.f430g;
                a2.f438e = aVar.f427d;
                if (!z) {
                    this.f433c.add(a2);
                }
            }
        }

        public void a(String str, Error error) {
            a a2 = a(str);
            if (a2 != null) {
                a2.f439f = error;
            }
        }

        public boolean b() {
            boolean z;
            int i;
            if (this.f433c != null) {
                z = true;
                i = 0;
                for (int i2 = 0; i2 < this.f433c.size(); i2++) {
                    a aVar = this.f433c.get(i2);
                    if (aVar == null || aVar.a()) {
                        i++;
                    } else {
                        z = false;
                    }
                }
            } else {
                z = true;
                i = 0;
            }
            return z || (i >= 2 && this.f432b == 1);
        }

        public boolean c() {
            if (this.f432b != 2) {
                return false;
            }
            if (this.f433c == null) {
                return true;
            }
            for (int i = 0; i < this.f433c.size(); i++) {
                a aVar = this.f433c.get(i);
                if (aVar != null && !aVar.a()) {
                    return false;
                }
            }
            return true;
        }
    }

    public class d {

        /* renamed from: a, reason: collision with root package name */
        private final ReentrantLock f442a;

        /* renamed from: b, reason: collision with root package name */
        private final ArrayList<b> f443b;

        /* renamed from: c, reason: collision with root package name */
        private long f444c;

        private d(DataLoaderHelper dataLoaderHelper) {
            this.f442a = new ReentrantLock();
            this.f443b = new ArrayList<>();
            this.f444c = 0L;
        }

        private Boolean e() {
            if (this.f444c >= 1) {
                return Boolean.valueOf(((long) this.f443b.size()) >= this.f444c);
            }
            return Boolean.FALSE;
        }

        public b a() {
            this.f442a.lock();
            if (this.f443b.size() == 0) {
                this.f442a.unlock();
                return null;
            }
            b bVar = this.f443b.get(r0.size() - 1);
            this.f442a.unlock();
            return bVar;
        }

        public void a(long j) {
            this.f444c = j;
        }

        public boolean a(b bVar) {
            Boolean bool;
            if (bVar == null || bVar.f423e.size() == 0) {
                return false;
            }
            this.f442a.lock();
            if (e().booleanValue()) {
                bool = Boolean.FALSE;
            } else {
                this.f443b.add(bVar);
                bool = Boolean.TRUE;
            }
            this.f442a.unlock();
            return bool.booleanValue();
        }

        public boolean a(String str) {
            int i = 0;
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Boolean bool = Boolean.FALSE;
            this.f442a.lock();
            while (true) {
                if (i >= this.f443b.size()) {
                    break;
                }
                if (this.f443b.get(i).b(str) != null) {
                    bool = Boolean.TRUE;
                    break;
                }
                i++;
            }
            this.f442a.unlock();
            return bool.booleanValue();
        }

        public long b() {
            this.f442a.lock();
            long size = this.f443b.size();
            this.f442a.unlock();
            return size;
        }

        public b b(b bVar) {
            b bVar2;
            if (TextUtils.isEmpty(bVar.f419a)) {
                bVar2 = null;
            } else {
                bVar2 = d(bVar.f419a);
                if (bVar2 != null) {
                    return bVar2;
                }
            }
            Iterator<b.a> it = bVar.f423e.iterator();
            while (it.hasNext() && (bVar2 = c(it.next().f424a)) == null) {
            }
            return bVar2;
        }

        public b b(String str) {
            b bVar = null;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            this.f442a.lock();
            int i = 0;
            while (true) {
                if (i >= this.f443b.size()) {
                    break;
                }
                b bVar2 = this.f443b.get(i);
                if (bVar2.b(str) != null) {
                    bVar = bVar2;
                    break;
                }
                i++;
            }
            this.f442a.unlock();
            return bVar;
        }

        public b c() {
            this.f442a.lock();
            if (this.f443b.size() == 0) {
                this.f442a.unlock();
                return null;
            }
            b bVar = this.f443b.get(r0.size() - 1);
            this.f443b.remove(bVar);
            this.f442a.unlock();
            return bVar;
        }

        public b c(String str) {
            b bVar = null;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            this.f442a.lock();
            int i = 0;
            while (true) {
                if (i >= this.f443b.size()) {
                    break;
                }
                b bVar2 = this.f443b.get(i);
                if (bVar2.b(str) != null) {
                    bVar = bVar2;
                    break;
                }
                i++;
            }
            if (bVar != null) {
                this.f443b.remove(bVar);
            }
            this.f442a.unlock();
            return bVar;
        }

        public b d(String str) {
            b bVar = null;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            this.f442a.lock();
            int i = 0;
            while (true) {
                if (i >= this.f443b.size()) {
                    break;
                }
                b bVar2 = this.f443b.get(i);
                if (!TextUtils.isEmpty(bVar2.f419a) && bVar2.f419a.equals(str)) {
                    bVar = bVar2;
                    break;
                }
                i++;
            }
            if (bVar != null) {
                this.f443b.remove(bVar);
            }
            this.f442a.unlock();
            return bVar;
        }

        public ArrayList<b> d() {
            try {
                this.f442a.lock();
                return new ArrayList<>(this.f443b);
            } finally {
                this.f442a.unlock();
            }
        }
    }

    private DataLoaderHelper() {
        this.f413b = new d();
        this.f414c = new d();
        this.f415d = new d();
        this.f416e = new d();
    }

    private String a(String str, String str2, long j, long j2, String[] strArr, String str3) {
        String str4;
        if (TextUtils.isEmpty(str) || strArr == null || strArr.length <= 0) {
            return null;
        }
        String[] strArr2 = (String[]) strArr.clone();
        if (j2 <= 0) {
            j2 = 0;
        }
        for (String str5 : strArr2) {
            if (!c(str5)) {
                return null;
            }
        }
        String[] a2 = a(strArr2);
        String encodeUrl = encodeUrl(str);
        if (TextUtils.isEmpty(encodeUrl)) {
            return null;
        }
        TTVideoEngineLog.i("DataLoaderHelper", "preloadProxyQuery: key = " + str + ", rawKey = " + str2);
        if (!TextUtils.isEmpty(str2)) {
            str = str2;
        }
        String encodeUrl2 = encodeUrl(str);
        if (TextUtils.isEmpty(encodeUrl2)) {
            encodeUrl2 = "videoId";
        }
        StringBuffer stringBuffer = new StringBuffer("?rk=");
        stringBuffer.append(encodeUrl2);
        stringBuffer.append("&k=");
        stringBuffer.append(encodeUrl);
        if (j2 > 0) {
            stringBuffer.append("&s=");
            stringBuffer.append(j + j2);
        }
        if (!TextUtils.isEmpty(str3)) {
            try {
                str4 = URLEncoder.encode(str3, "UTF-8");
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
                str4 = null;
            }
            if (!TextUtils.isEmpty(str4)) {
                stringBuffer.append("&p=");
                stringBuffer.append(str4);
            }
        }
        StringBuffer stringBuffer2 = new StringBuffer();
        for (int i = 0; i < a2.length; i++) {
            String encodeUrlByQuery = encodeUrlByQuery(a2[i]);
            StringBuffer stringBuffer3 = new StringBuffer();
            if (!TextUtils.isEmpty(encodeUrlByQuery)) {
                stringBuffer3.append("&u");
                stringBuffer3.append(i);
                stringBuffer3.append("=");
                stringBuffer3.append(encodeUrlByQuery);
            }
            if (stringBuffer3.length() + stringBuffer2.length() + stringBuffer.length() + 32 > 3096) {
                break;
            }
            stringBuffer2.append(stringBuffer3);
        }
        if (stringBuffer2.length() <= 0) {
            return null;
        }
        stringBuffer.append(stringBuffer2);
        return stringBuffer.toString();
    }

    private ArrayList<TTVideoEngine> a(String str) {
        ArrayList<TTVideoEngine> arrayList = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            this.h.lock();
            ArrayList<TTVideoEngine> arrayList2 = this.f418g.get(str);
            if (arrayList2 != null) {
                arrayList = new ArrayList<>(arrayList2);
                TTVideoEngineLog.i("DataLoaderHelper", "get engine ref,rawKey = " + str + " engine ref count: " + arrayList.size());
            }
            return arrayList;
        } finally {
            this.h.unlock();
        }
    }

    private void a() {
        if (this.i == null) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] need load mdl first.");
            return;
        }
        b a2 = this.f413b.a();
        if (a2 != null && this.f414c.a(a2)) {
            this.f413b.c();
            if (a2.f421c != null) {
                b(a2);
            }
        }
    }

    private void a(b bVar) {
        ArrayList<b> d2 = this.f416e.d();
        for (int i = 0; i < d2.size(); i++) {
            b bVar2 = d2.get(i);
            if (!TextUtils.isEmpty(bVar2.f419a) && !TextUtils.isEmpty(bVar.f419a) && bVar2.f419a.equals(bVar.f419a)) {
                return;
            }
        }
        ArrayList<TTVideoEngine> a2 = a(bVar.f419a);
        if (a2 == null || a2.size() == 0) {
            return;
        }
        for (int i2 = 0; i2 < a2.size(); i2++) {
            a2.get(i2).a();
        }
    }

    private void a(b bVar, b.a aVar) {
        if (bVar == null) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] start mdl preload task fail. item is null");
            return;
        }
        if (aVar == null) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] start mdl preload task fail. track is null");
            notifyPreloadError(bVar.f421c, -100004);
            return;
        }
        TTVideoEngineLog.i("DataLoaderHelper", "[preload] start mdl preload task.  key = " + aVar.f424a);
        String str = aVar.f424a;
        String[] strArr = aVar.f426c;
        if (strArr != null) {
            String a2 = a(str, bVar.f419a, aVar.f429f, 0L, strArr, aVar.f427d);
            aVar.f425b = a2;
            if (!TextUtils.isEmpty(a2)) {
                this.f415d.a(bVar);
                if (aVar.f429f > 0) {
                    long j = aVar.f428e;
                    if (j > 0) {
                        this.i.preloadResource(aVar.f425b, (int) j);
                    }
                    this.i.preloadResource(aVar.f425b, (int) aVar.f429f, (int) aVar.f430g);
                } else {
                    this.i.preloadResource(aVar.f425b, (int) aVar.f430g);
                }
                TTVideoEngineLog.i("DataLoaderHelper", "[preload] exect preload task ,key is " + aVar.f424a + "; videoId = " + bVar.f419a);
                return;
            }
        }
        bVar.a(-100001);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0090 A[Catch: Exception -> 0x011c, TryCatch #0 {Exception -> 0x011c, blocks: (B:9:0x001d, B:13:0x003c, B:14:0x0048, B:15:0x004c, B:19:0x0050, B:22:0x005a, B:24:0x0062, B:25:0x006f, B:26:0x008a, B:28:0x0090, B:29:0x0096, B:32:0x00a2, B:34:0x00a8, B:35:0x00ad, B:38:0x00b6, B:43:0x00c8, B:44:0x00cb, B:46:0x00d0, B:47:0x00d3, B:50:0x00db, B:54:0x00a0, B:55:0x0072, B:57:0x007a, B:58:0x0087), top: B:8:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a8 A[Catch: Exception -> 0x011c, TryCatch #0 {Exception -> 0x011c, blocks: (B:9:0x001d, B:13:0x003c, B:14:0x0048, B:15:0x004c, B:19:0x0050, B:22:0x005a, B:24:0x0062, B:25:0x006f, B:26:0x008a, B:28:0x0090, B:29:0x0096, B:32:0x00a2, B:34:0x00a8, B:35:0x00ad, B:38:0x00b6, B:43:0x00c8, B:44:0x00cb, B:46:0x00d0, B:47:0x00d3, B:50:0x00db, B:54:0x00a0, B:55:0x0072, B:57:0x007a, B:58:0x0087), top: B:8:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c8 A[Catch: Exception -> 0x011c, TryCatch #0 {Exception -> 0x011c, blocks: (B:9:0x001d, B:13:0x003c, B:14:0x0048, B:15:0x004c, B:19:0x0050, B:22:0x005a, B:24:0x0062, B:25:0x006f, B:26:0x008a, B:28:0x0090, B:29:0x0096, B:32:0x00a2, B:34:0x00a8, B:35:0x00ad, B:38:0x00b6, B:43:0x00c8, B:44:0x00cb, B:46:0x00d0, B:47:0x00d3, B:50:0x00db, B:54:0x00a0, B:55:0x0072, B:57:0x007a, B:58:0x0087), top: B:8:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d0 A[Catch: Exception -> 0x011c, TryCatch #0 {Exception -> 0x011c, blocks: (B:9:0x001d, B:13:0x003c, B:14:0x0048, B:15:0x004c, B:19:0x0050, B:22:0x005a, B:24:0x0062, B:25:0x006f, B:26:0x008a, B:28:0x0090, B:29:0x0096, B:32:0x00a2, B:34:0x00a8, B:35:0x00ad, B:38:0x00b6, B:43:0x00c8, B:44:0x00cb, B:46:0x00d0, B:47:0x00d3, B:50:0x00db, B:54:0x00a0, B:55:0x0072, B:57:0x007a, B:58:0x0087), top: B:8:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00a0 A[Catch: Exception -> 0x011c, TryCatch #0 {Exception -> 0x011c, blocks: (B:9:0x001d, B:13:0x003c, B:14:0x0048, B:15:0x004c, B:19:0x0050, B:22:0x005a, B:24:0x0062, B:25:0x006f, B:26:0x008a, B:28:0x0090, B:29:0x0096, B:32:0x00a2, B:34:0x00a8, B:35:0x00ad, B:38:0x00b6, B:43:0x00c8, B:44:0x00cb, B:46:0x00d0, B:47:0x00d3, B:50:0x00db, B:54:0x00a0, B:55:0x0072, B:57:0x007a, B:58:0x0087), top: B:8:0x001d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo, boolean z, boolean z2) {
        b b2;
        d dVar;
        StringBuilder sb;
        b.a b3;
        String str;
        c loadProgressByRawKey;
        String str2;
        if (aVMDLDataLoaderNotifyInfo == null || TextUtils.isEmpty(aVMDLDataLoaderNotifyInfo.logInfo)) {
            return;
        }
        String[] split = aVMDLDataLoaderNotifyInfo.logInfo.split(",");
        if (split.length < 4) {
            return;
        }
        boolean z3 = false;
        try {
            long longValue = Long.valueOf(split[0]).longValue();
            long longValue2 = Long.valueOf(split[1]).longValue();
            if (longValue2 > 0 || z2) {
                String str3 = split[2];
                String str4 = split[3];
                if (z || z2) {
                    b2 = this.f415d.b(str3);
                    if (b2 == null) {
                        sb = new StringBuilder("[preload] preload temItem == null return ");
                        sb.append(aVMDLDataLoaderNotifyInfo.logInfo);
                    } else {
                        dVar = this.f415d;
                        z3 = true;
                        b3 = b2.b(str3);
                        if (b3 != null) {
                            b3.h = longValue2;
                            b3.i = longValue;
                            b3.f427d = str4;
                        }
                        str = !TextUtils.isEmpty(b2.f419a) ? str3 : b2.f419a;
                        loadProgressByRawKey = getLoadProgressByRawKey(str);
                        if (loadProgressByRawKey == null) {
                            loadProgressByRawKey = new c(this);
                        }
                        loadProgressByRawKey.f431a = b2.f419a;
                        loadProgressByRawKey.f432b = !z ? 2 : 1;
                        loadProgressByRawKey.a(b2);
                        putByRawKey(str, loadProgressByRawKey);
                        if (loadProgressByRawKey.b() && !z2) {
                            return;
                        }
                        if (!z3) {
                            dVar.c(str3);
                        }
                        removeLoadProgressByRawKey(str);
                        if (!z) {
                            a(b2);
                        }
                        if (b2.a() != null || !z2) {
                            return;
                        }
                        s++;
                        dVar.c(str3);
                        DataLoaderTaskProgressInfo dataLoaderTaskProgressInfo = new DataLoaderTaskProgressInfo();
                        dataLoaderTaskProgressInfo.mCacheSizeFromZero = longValue;
                        dataLoaderTaskProgressInfo.mMediaSize = longValue2;
                        dataLoaderTaskProgressInfo.mKey = str3;
                        dataLoaderTaskProgressInfo.mLocalFilePath = str4;
                        dataLoaderTaskProgressInfo.mVideoId = b2.f419a;
                        dataLoaderTaskProgressInfo.mTaskType = loadProgressByRawKey.f432b;
                        PreLoaderItemCallBackInfo preLoaderItemCallBackInfo = new PreLoaderItemCallBackInfo(2);
                        preLoaderItemCallBackInfo.preloadDataInfo = dataLoaderTaskProgressInfo;
                        preLoaderItemCallBackInfo.loadProgress = loadProgressByRawKey;
                        b2.a().preloadItemInfo(preLoaderItemCallBackInfo);
                        str2 = "[preload] notify end cache size = " + loadProgressByRawKey.a();
                    }
                } else {
                    b2 = this.f416e.b(str3);
                    if (b2 != null) {
                        dVar = this.f416e;
                        b3 = b2.b(str3);
                        if (b3 != null) {
                        }
                        if (!TextUtils.isEmpty(b2.f419a)) {
                        }
                        loadProgressByRawKey = getLoadProgressByRawKey(str);
                        if (loadProgressByRawKey == null) {
                        }
                        loadProgressByRawKey.f431a = b2.f419a;
                        loadProgressByRawKey.f432b = !z ? 2 : 1;
                        loadProgressByRawKey.a(b2);
                        putByRawKey(str, loadProgressByRawKey);
                        if (loadProgressByRawKey.b()) {
                        }
                        if (!z3) {
                        }
                        removeLoadProgressByRawKey(str);
                        if (!z) {
                        }
                        if (b2.a() != null) {
                            return;
                        } else {
                            return;
                        }
                    }
                    sb = new StringBuilder("[preload] play temItem == null return ");
                    sb.append(aVMDLDataLoaderNotifyInfo.logInfo);
                }
                TTVideoEngineLog.i("DataLoaderHelper", str2);
            }
            sb = new StringBuilder("[preload] mediaSize <= 0 return ");
            sb.append(aVMDLDataLoaderNotifyInfo.logInfo);
            str2 = sb.toString();
            TTVideoEngineLog.i("DataLoaderHelper", str2);
        } catch (Exception unused) {
        }
    }

    private void a(String str, String str2, long j, PreloaderURLItem preloaderURLItem) {
        if (TextUtils.isEmpty(str)) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] key invalid.");
            notifyPreloadError(preloaderURLItem, -100001);
            return;
        }
        if (this.i == null || this.f412a != 0) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] need load mdl first.");
            notifyPreloadError(preloaderURLItem, -100002);
        } else {
            if (this.f414c.a(str) || this.f413b.a(str)) {
                notifyPreloadError(preloaderURLItem, -100003);
                return;
            }
            b bVar = new b(this);
            bVar.a(str, j);
            bVar.f419a = str2;
            bVar.f421c = preloaderURLItem;
            this.f413b.a(bVar);
            a();
        }
    }

    private boolean a(d dVar) {
        boolean z = false;
        if (dVar.b() > 0) {
            while (true) {
                b c2 = dVar.c();
                if (c2 == null) {
                    break;
                }
                c(c2);
                z = true;
            }
        }
        return z;
    }

    private String[] a(String[] strArr) {
        if (strArr == null || strArr.length <= 1) {
            return strArr;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(strArr[0]);
        for (int i = 1; i < strArr.length; i++) {
            String str = strArr[i];
            Boolean bool = Boolean.TRUE;
            int size = arrayList.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                if (((String) arrayList.get(size)).equals(str)) {
                    bool = Boolean.FALSE;
                    break;
                }
                size--;
            }
            if (bool.booleanValue()) {
                arrayList.add(str);
            }
        }
        String[] strArr2 = new String[arrayList.size()];
        arrayList.toArray(strArr2);
        return strArr2;
    }

    private DataLoaderCacheInfo b(String str) {
        DataLoaderCacheInfo dataLoaderCacheInfo = null;
        if (str == null) {
            return null;
        }
        String[] split = str.split(",");
        if (split.length >= 4) {
            dataLoaderCacheInfo = new DataLoaderCacheInfo(this);
            dataLoaderCacheInfo.mLocalFilePath = split[3];
            if (!TextUtils.isEmpty(split[0])) {
                dataLoaderCacheInfo.mCacheSizeFromZero = Long.parseLong(split[0]);
            }
            if (!TextUtils.isEmpty(split[1])) {
                dataLoaderCacheInfo.mMediaSize = Long.parseLong(split[1]);
            }
        }
        return dataLoaderCacheInfo;
    }

    private void b(b bVar) {
        if (bVar == null) {
            a();
            return;
        }
        if (this.i == null) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] need load mdl first.");
            return;
        }
        this.f414c.b(bVar);
        long j = bVar.f420b;
        PreloaderURLItem preloaderURLItem = bVar.f421c;
        if (preloaderURLItem != null && preloaderURLItem.getUrls() != null && bVar.f421c.getUrls().length > 0) {
            b.a aVar = bVar.f423e.get(0);
            aVar.f426c = bVar.f421c.getUrls();
            aVar.f430g = bVar.f420b;
            aVar.f427d = bVar.f421c.getFilePath();
            a(bVar, aVar);
        }
        if (bVar.a() != null) {
            PreLoaderItemCallBackInfo preLoaderItemCallBackInfo = new PreLoaderItemCallBackInfo(6);
            preLoaderItemCallBackInfo.preloadType = 0;
            preLoaderItemCallBackInfo.videoPreloadSize = j;
            preLoaderItemCallBackInfo.audioPreloadSize = 0L;
            bVar.a().preloadItemInfo(preLoaderItemCallBackInfo);
            TTVideoEngineLog.i("DataLoaderHelper", "[preload] notify info. type = 0");
        }
        a();
    }

    public static /* synthetic */ int c() {
        int i = s;
        s = i + 1;
        return i;
    }

    private void c(b bVar) {
        if (bVar == null || bVar.f422d) {
            return;
        }
        bVar.f422d = true;
        if (bVar.a() != null) {
            s++;
            bVar.a().preloadItemInfo(new PreLoaderItemCallBackInfo(5));
        }
    }

    private boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return (lowerCase.startsWith("http://127.0.0.1") || lowerCase.startsWith("http://localhost") || lowerCase.startsWith(MDL_PREFIX) || lowerCase.startsWith("file://") || lowerCase.startsWith("/") || lowerCase.endsWith(".mpd") || lowerCase.contains(".mpd?")) ? false : true;
    }

    private boolean d() {
        if (this.i != null) {
            return true;
        }
        if (AVMDLDataLoader.init(false, false) != 0) {
            TTVideoEngineLog.e("DataLoaderHelper", "library has not been loaded");
            return false;
        }
        try {
            AVMDLDataLoader aVMDLDataLoader = AVMDLDataLoader.getInstance();
            this.i = aVMDLDataLoader;
            aVMDLDataLoader.setConfigure(this.j);
            this.i.setListener(this);
            this.i.setStartCompleteListener(this);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static String encodeUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    public static String encodeUrlByQuery(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            String queryComponentEncode = AVMDLDataLoader.queryComponentEncode(str);
            return TextUtils.isEmpty(queryComponentEncode) ? URLEncoder.encode(str, "UTF-8") : queryComponentEncode;
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    public static DataLoaderHelper getDataLoader() {
        return p;
    }

    public void _addEngine(TTVideoEngine tTVideoEngine, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.h.lock();
            ArrayList<TTVideoEngine> arrayList = this.f418g.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.f418g.put(str, arrayList);
            }
            if (!arrayList.contains(tTVideoEngine)) {
                arrayList.add(tTVideoEngine);
                TTVideoEngineLog.i("DataLoaderHelper", "add engine ref,rawKey = " + str + " engine ref count: " + arrayList.size());
            }
            this.h.unlock();
        } catch (Throwable th) {
            this.h.unlock();
            throw th;
        }
    }

    public String _proxyUrl(String str, String str2, long j, String[] strArr, String str3) {
        if (this.f412a != 0 || TextUtils.isEmpty(str) || strArr == null || strArr.length <= 0) {
            return null;
        }
        String[] strArr2 = (String[]) strArr.clone();
        for (String str4 : strArr2) {
            if (!c(str4)) {
                return str4;
            }
        }
        if (this.i == null) {
            TTVideoEngineLog.e("DataLoaderHelper", "start mdl first");
            return null;
        }
        this.o.lock();
        try {
            String localAddr = this.i.getLocalAddr();
            if (TextUtils.isEmpty(localAddr)) {
                TTVideoEngineLog.e("DataLoaderHelper", "local host error");
                this.o.unlock();
                return null;
            }
            String a2 = a(str, str2, 0L, j, strArr2, str3);
            if (TextUtils.isEmpty(a2)) {
                this.o.unlock();
                return null;
            }
            StringBuffer stringBuffer = new StringBuffer();
            int i = this.n;
            this.n = i + 1;
            TTVideoEngineLog.i("DataLoaderHelper", "proxy url, mInvalidMdlProcotol: " + this.l);
            if (this.l || !this.m) {
                stringBuffer.append("http://");
                stringBuffer.append(localAddr);
                stringBuffer.append("/");
                stringBuffer.append(i);
            } else {
                stringBuffer.append("mdl://id");
                stringBuffer.append(i);
                stringBuffer.append("/");
            }
            stringBuffer.append(a2);
            String auth = this.i.getAuth(a2);
            if (!TextUtils.isEmpty(auth)) {
                stringBuffer.append("&ah=");
                stringBuffer.append(auth);
                stringBuffer.append("&ah=");
                stringBuffer.append(auth);
            }
            String stringBuffer2 = stringBuffer.toString();
            TTVideoEngineLog.i("DataLoaderHelper", "_proxyUrl: ".concat(String.valueOf(stringBuffer2)));
            this.o.unlock();
            b d2 = this.f416e.d(str2);
            if (d2 == null) {
                d2 = new b(this);
            }
            b.a a3 = d2.a(str);
            if (a3 != null) {
                a3.f424a = str;
                d2.f419a = str2;
                a3.f425b = stringBuffer2;
                a3.f426c = strArr2;
                a3.f427d = str3;
                this.f416e.a(d2);
            }
            return stringBuffer2;
        } catch (Throwable th) {
            this.o.unlock();
            throw th;
        }
    }

    public void _removeEngine(TTVideoEngine tTVideoEngine, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.h.lock();
            ArrayList<TTVideoEngine> arrayList = this.f418g.get(str);
            if (arrayList != null) {
                arrayList.remove(tTVideoEngine);
                TTVideoEngineLog.i("DataLoaderHelper", "remove engine ref,rawKey = " + str + " engine ref count: " + arrayList.size());
                if (arrayList.size() == 0) {
                    this.f418g.remove(str);
                }
            }
        } finally {
            this.h.unlock();
        }
    }

    public void _removePlayTask(String str) {
        this.f416e.c(str);
    }

    public void addTask(PreloaderURLItem preloaderURLItem) {
        DataLoaderHelper dataLoaderHelper;
        q++;
        if (preloaderURLItem == null) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] url item invalid");
            return;
        }
        this.o.lock();
        try {
            dataLoaderHelper = this;
            try {
                dataLoaderHelper.a(preloaderURLItem.getKey(), preloaderURLItem.getVideoId(), preloaderURLItem.getPreloadSize(), preloaderURLItem);
                dataLoaderHelper.o.unlock();
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                dataLoaderHelper.o.unlock();
                throw th2;
            }
        } catch (Throwable th3) {
            th = th3;
            dataLoaderHelper = this;
        }
    }

    public void cancelAllTasks() {
        if (this.i == null || this.f412a != 0) {
            TTVideoEngineLog.e("DataLoaderHelper", "need start mdl first");
            return;
        }
        this.o.lock();
        try {
            cancelAllTasksInternal();
            this.o.unlock();
        } catch (Throwable unused) {
            this.o.unlock();
        }
    }

    public void cancelAllTasksInternal() {
        a(this.f414c);
        a(this.f413b);
        if (a(this.f415d)) {
            this.i.cancelAll();
        }
    }

    public void cancelTask(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.i == null || this.f412a != 0) {
            TTVideoEngineLog.e("DataLoaderHelper", "need start mdl first");
            return;
        }
        this.o.lock();
        try {
            b c2 = this.f413b.c(str);
            if (c2 == null && (c2 = this.f414c.c(str)) == null) {
                c2 = this.f415d.c(str);
                if (c2 != null) {
                    this.i.cancel(str);
                }
                TTVideoEngineLog.i("DataLoaderHelper", "[preload] cancel preload task. key = ".concat(String.valueOf(str)));
                this.o.unlock();
            }
            c(c2);
            TTVideoEngineLog.i("DataLoaderHelper", "[preload] cancel preload task. key = ".concat(String.valueOf(str)));
            this.o.unlock();
        } catch (Throwable unused) {
            this.o.unlock();
        }
    }

    public void clearAllCaches() {
        if (this.f412a != 0) {
            return;
        }
        this.o.lock();
        try {
            AVMDLDataLoader aVMDLDataLoader = this.i;
            if (aVMDLDataLoader == null) {
                TTVideoEngineLog.e("DataLoaderHelper", "mInnerDataLoader == null");
            } else {
                aVMDLDataLoader.clearAllCaches();
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    public void close() {
        this.o.lock();
        try {
            if (this.f412a == 1) {
                TTVideoEngineLog.e("DataLoaderHelper", "DataLoader not started, not need close");
            } else {
                this.i.close();
                cancelAllTasksInternal();
                this.f412a = 1;
            }
        } finally {
            this.o.unlock();
        }
    }

    public DataLoaderCacheInfo getCacheInfoByFilePath(String str, String str2) {
        this.o.lock();
        try {
            AVMDLDataLoader aVMDLDataLoader = this.i;
            if (aVMDLDataLoader != null) {
                DataLoaderCacheInfo b2 = b(aVMDLDataLoader.getStringCacheInfo(str, str2));
                this.o.unlock();
                return b2;
            }
        } catch (Throwable unused) {
        }
        this.o.unlock();
        return null;
    }

    public long getCacheSize(String str) {
        long j = 0;
        if (this.f412a != 0) {
            return 0L;
        }
        this.o.lock();
        try {
            AVMDLDataLoader aVMDLDataLoader = this.i;
            if (aVMDLDataLoader != null) {
                long cacheSize = aVMDLDataLoader.getCacheSize(str);
                if (cacheSize > 0) {
                    j = cacheSize;
                }
            }
        } finally {
            try {
                return j;
            } finally {
            }
        }
        return j;
    }

    public long getCacheSizeByFilePath(String str, String str2) {
        this.o.lock();
        long j = 0;
        try {
            DataLoaderCacheInfo cacheInfoByFilePath = getCacheInfoByFilePath(str, str2);
            if (cacheInfoByFilePath != null) {
                j = cacheInfoByFilePath.mCacheSizeFromZero;
            }
        } catch (Throwable unused) {
        }
        this.o.unlock();
        return j;
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderListener
    public String getCheckSumInfo(String str) {
        return null;
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderListener
    public long getInt64Value(int i, long j) {
        return 0L;
    }

    public c getLoadProgressByRawKey(String str) {
        if (!TextUtils.isEmpty(str)) {
            return this.f417f.get(str);
        }
        TTVideoEngineLog.e("DataLoaderHelper", "[preload] get, param is invalid key is null");
        return null;
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderListener
    public String getStringValue(int i, long j, String str) {
        return null;
    }

    public void notifyPreloadError(PreloaderURLItem preloaderURLItem, int i) {
        IPreLoaderItemCallBackListener callBackListener = preloaderURLItem.getCallBackListener();
        if (callBackListener != null) {
            s++;
            PreLoaderItemCallBackInfo preLoaderItemCallBackInfo = new PreLoaderItemCallBackInfo(3);
            preLoaderItemCallBackInfo.preloadError = new Error(Error.DataLoaderPreload, i);
            callBackListener.preloadItemInfo(preLoaderItemCallBackInfo);
        }
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoaderListener
    public void onNotify(AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        String str;
        b b2;
        if (aVMDLDataLoaderNotifyInfo == null) {
            return;
        }
        int i = aVMDLDataLoaderNotifyInfo.what;
        if (i != 0 && i != 15) {
            if (i != 20) {
                if (i == 3 || i == 4) {
                    if (i == 4) {
                        r++;
                    }
                    if (aVMDLDataLoaderNotifyInfo.logInfo != null) {
                        long j = aVMDLDataLoaderNotifyInfo.parameter;
                        if (j != 3) {
                            a(aVMDLDataLoaderNotifyInfo, j == 2, i == 4);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (i == 7) {
                    r++;
                    if (TextUtils.isEmpty(aVMDLDataLoaderNotifyInfo.logInfo)) {
                        return;
                    }
                    String[] split = aVMDLDataLoaderNotifyInfo.logInfo.split(",");
                    if (split.length < 4) {
                        return;
                    }
                    String str2 = split[2];
                    b b3 = this.f415d.b(str2);
                    this.f415d.c(str2);
                    c(b3);
                    return;
                }
                if (i != 8) {
                    if (i != 10 && i != 11) {
                        return;
                    }
                }
            }
            if (i == 8) {
                r++;
            }
            String str3 = aVMDLDataLoaderNotifyInfo.logInfo;
            if ((str3 == null || aVMDLDataLoaderNotifyInfo.parameter != 3) && str3 != null) {
                TTVideoEngineLog.i("DataLoaderHelper", " task fail log = " + aVMDLDataLoaderNotifyInfo.logInfo + ", code = " + aVMDLDataLoaderNotifyInfo.code + ", task type = " + aVMDLDataLoaderNotifyInfo.parameter);
                String[] split2 = aVMDLDataLoaderNotifyInfo.logInfo.split(",");
                if (split2.length > 0 && (b2 = this.f415d.b((str = split2[0]))) != null) {
                    d dVar = this.f415d;
                    Error error = new Error(Error.DataLoaderPreload, (int) aVMDLDataLoaderNotifyInfo.code, aVMDLDataLoaderNotifyInfo.logInfo);
                    String str4 = TextUtils.isEmpty(b2.f419a) ? str : b2.f419a;
                    c loadProgressByRawKey = getLoadProgressByRawKey(str4);
                    if (loadProgressByRawKey == null) {
                        loadProgressByRawKey = new c(this);
                    }
                    loadProgressByRawKey.f431a = b2.f419a;
                    loadProgressByRawKey.f432b = (int) aVMDLDataLoaderNotifyInfo.parameter;
                    loadProgressByRawKey.a(b2);
                    loadProgressByRawKey.a(str, error);
                    putByRawKey(str4, loadProgressByRawKey);
                    if (!loadProgressByRawKey.b() && !loadProgressByRawKey.c()) {
                        loadProgressByRawKey.b();
                        loadProgressByRawKey.c();
                        return;
                    }
                    dVar.c(str);
                    TTVideoEngineLog.i("DataLoaderHelper", "pop all task item. videoId = " + b2.f419a + " key = " + str);
                    removeLoadProgressByRawKey(str4);
                    if (b2.a() == null || aVMDLDataLoaderNotifyInfo.parameter != 2) {
                        return;
                    }
                    PreLoaderItemCallBackInfo preLoaderItemCallBackInfo = new PreLoaderItemCallBackInfo(3);
                    preLoaderItemCallBackInfo.preloadError = error;
                    preLoaderItemCallBackInfo.loadProgress = loadProgressByRawKey;
                    preLoaderItemCallBackInfo.preloadDataInfo = null;
                    s++;
                    b2.a().preloadItemInfo(preLoaderItemCallBackInfo);
                    return;
                }
                return;
            }
            return;
        }
        VideoEventEngineUploader videoEventEngineUploader = this.k;
        if (videoEventEngineUploader != null) {
            videoEventEngineUploader.onEvent(aVMDLDataLoaderNotifyInfo.logType, aVMDLDataLoaderNotifyInfo.jsonLog);
        }
    }

    @Override // com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLStartCompleteListener
    public void onStartComplete() {
    }

    public void putByRawKey(String str, c cVar) {
        if (TextUtils.isEmpty(str) || cVar == null) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] param is invalid");
        } else {
            this.f417f.put(str, cVar);
        }
    }

    public void removeCacheFile(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.o.lock();
        try {
            if (this.i == null) {
                TTVideoEngineLog.e("DataLoaderHelper", "mInnerDataLoader == null");
            } else {
                TTVideoEngineLog.i("DataLoaderHelper", "remove mdl file. key ".concat(String.valueOf(str)));
                if (z) {
                    this.i.forceRemoveFileCache(str);
                } else {
                    this.i.removeFileCache(str);
                }
            }
        } catch (Throwable unused) {
        }
        this.o.unlock();
    }

    public void removeLoadProgressByRawKey(String str) {
        if (TextUtils.isEmpty(str)) {
            TTVideoEngineLog.e("DataLoaderHelper", "[preload] remove, param is invalid key is null");
        } else {
            this.f417f.remove(str);
        }
    }

    public void setCacheInfoLists(String[] strArr, long[] jArr) {
        Arrays.toString(strArr);
        Arrays.toString(jArr);
        this.o.lock();
        try {
            this.j.setCacheInfoList(strArr, jArr);
        } finally {
            this.o.unlock();
        }
    }

    public void setContext(Context context) {
        this.o.lock();
        this.o.unlock();
    }

    public synchronized void setEngineUploader(VideoEventEngineUploader videoEventEngineUploader) {
        this.k = videoEventEngineUploader;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x006e -> B:16:0x0071). Please report as a decompilation issue!!! */
    public void setIntValue(int i, int i2) {
        this.o.lock();
        try {
            try {
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            if (i == 11) {
                this.j.mPreloadParallelNum = i2;
                AVMDLDataLoader aVMDLDataLoader = this.i;
                if (aVMDLDataLoader != null) {
                    aVMDLDataLoader.setIntValue(102, i2);
                }
            } else if (i != 512) {
                boolean z = true;
                if (i == 1005) {
                    if (i2 != 1) {
                        z = false;
                    }
                    this.m = z;
                    TTVideoEngineLog.i("DataLoaderHelper", "config DATALOADER_KEY_SET_MDL_PROTOCOL_ENABLE: " + this.m);
                } else if (i == 1) {
                    this.j.mMaxCacheSize = i2;
                } else if (i == 2) {
                    this.j.mRWTimeOut = i2;
                } else {
                    if (i != 3) {
                        if (i == 4) {
                            this.j.mTryCount = i2;
                        }
                        this.o.unlock();
                    }
                    this.j.mOpenTimeOut = i2;
                }
            } else {
                this.j.mAlogEnable = i2;
                AVMDLDataLoader aVMDLDataLoader2 = this.i;
                if (aVMDLDataLoader2 != null) {
                    aVMDLDataLoader2.setIntValue(AVMDLDataLoader.KeyIsAlogEnable, i2);
                }
            }
            this.o.unlock();
        } catch (Throwable th) {
            this.o.unlock();
            throw th;
        }
    }

    public void setStringValue(int i, String str) {
        this.o.lock();
        if (i == 0) {
            try {
                this.j.mCacheDir = str;
            } catch (Exception unused) {
            } catch (Throwable th) {
                this.o.unlock();
                throw th;
            }
        }
        this.o.unlock();
    }

    public void start() {
        this.o.lock();
        try {
            if (this.f412a == 0) {
                TTVideoEngineLog.e("DataLoaderHelper", "DataLoader has started not need start");
            } else {
                if (!d()) {
                    throw new Exception("init data loader fail");
                }
                this.f414c.a(4L);
                if (this.j == null) {
                    this.j = AVMDLDataLoaderConfigure.getDefaultonfigure();
                }
                if (this.k != null) {
                    this.j.mEnableReportTaskLog = 1;
                }
                this.i.setConfigure(this.j);
                if (this.i.start() < 0) {
                    throw new Exception("start data loader fail");
                }
                if (this.i.getLongValue(AVMDLDataLoader.KeyIsGetMdlProtocolHandle) == -1) {
                    this.l = true;
                }
                this.f412a = 0;
            }
        } finally {
            this.o.unlock();
        }
    }
}
