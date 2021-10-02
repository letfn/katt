# -*- mode: Python -*

k8s_yaml('main.yaml')
k8s_resource('example-python', port_forwards=8000, resource_deps=['deploy'])

docker_build('example-python-image', '.', build_args={'flask_env': 'development'},
    live_update=[
        sync('now.py', '/app'),
        sync('app.py', '/app'),
        sync('requirements.txt', '/app'),
        run('cd /app && pip install -r requirements.txt', trigger='./requirements.txt'),

        run('sed -i "s/Hello cats!/{}/g" /app/templates/index.html'. format("Congrats, you ran a live update!")),
])
