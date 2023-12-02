SELECT worker.name, max(project_count) FROM (
                          SELECT count(project_id) as project_count
                             FROM project_worker
                             GROUP BY worker_id
                        )
 FROM worker
 JOIN project_worker ON worker.id = project_worker.worker_id
 WHERE

    SELECT max(project_count) FROM (
      SELECT count(project_id) as project_count
         FROM project_worker
         GROUP BY worker_id
    )







    SELECT max(project_count) FROM (
      SELECT worker_id, count(project_id) as project_count
         FROM project_worker
         GROUP BY worker_id
    )