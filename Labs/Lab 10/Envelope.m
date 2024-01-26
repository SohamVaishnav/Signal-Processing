function [t_env, env] = Envelope(a, d, s, sd, r, fs)
    t_attack = 0:1/fs:a;
    t_env = t_attack;
    env_a = zeros(1, length(t_attack));
    for k = 1:length(t_attack)
        env_a(k) = (1/a)*t_attack(k);
    end
    env = env_a;
    
    t_decay = a+1/fs:1/fs:a+d;
    t_env = [t_env, t_decay];
    env_d = zeros(1, length(t_decay));
    for k = 1:length(t_decay)
        env_d(k) = 1 + (s-1)*(t_decay(k)-a)/(d);
    end
    env = [env, env_d];

    t_sustain = a+d+1/fs:1/fs:a+d+sd;
    t_env = [t_env, t_sustain];
    env_s = zeros(1, length(t_sustain));
    for k = 1:length(t_sustain)
        env_s(k) = s;
    end
    env = [env, env_s];

    t_release = a+d+sd+1/fs:1/fs:a+d+sd+r;
    t_env = [t_env, t_release];
    env_r = zeros(1, length(t_release));
    for k = 1:length(t_release)
        env_r(k) = s + (-s)*(t_release(k)-a-d-sd)/(r);
    end
    env = [env, env_r];
end