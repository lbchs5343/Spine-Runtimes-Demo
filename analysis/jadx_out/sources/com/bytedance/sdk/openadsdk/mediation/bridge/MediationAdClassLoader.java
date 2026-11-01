package com.bytedance.sdk.openadsdk.mediation.bridge;

import android.content.Context;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.bridge.valueset.MediationLoaderConfig;

/* loaded from: classes3.dex */
public class MediationAdClassLoader implements Bridge {
    private static volatile MediationAdClassLoader dq;

    private MediationAdClassLoader() {
    }

    public static MediationAdClassLoader getInstance() {
        if (dq == null) {
            synchronized (MediationAdClassLoader.class) {
                dq = new MediationAdClassLoader();
            }
        }
        return dq;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 8106) {
            MediationLoaderConfig create = MediationLoaderConfig.create(valueSet);
            Context context = (Context) valueSet.objectValue(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, Context.class);
            try {
                Object newInstance = Class.forName(create.getClassName()).newInstance();
                if (newInstance instanceof Bridge) {
                    Bridge bridge = (Bridge) newInstance;
                    MediationValueSetBuilder create2 = MediationValueSetBuilder.create();
                    create2.add(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, context);
                    ValueSet valueSet2 = (ValueSet) valueSet.objectValue(8424, ValueSet.class);
                    if (valueSet2 != null) {
                        create2.add(8424, valueSet2);
                    } else {
                        create2.add(8424, valueSet);
                    }
                    bridge.call(8241, create2.build(), null);
                }
            } catch (ClassNotFoundException e2) {
                e = e2;
                e.printStackTrace();
                return null;
            } catch (IllegalAccessException e3) {
                e = e3;
                e.printStackTrace();
                return null;
            } catch (InstantiationException e4) {
                e = e4;
                e.printStackTrace();
                return null;
            }
        } else if (i == 8229) {
            try {
                Class.forName(valueSet.stringValue(AVMDLDataLoader.KeyIsLiveMobileUploadAllow));
                return (T) Boolean.TRUE;
            } catch (ClassNotFoundException e5) {
                e5.printStackTrace();
                return (T) Boolean.FALSE;
            }
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }
}
