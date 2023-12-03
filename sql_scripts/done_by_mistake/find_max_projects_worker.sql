  WITH project_counts AS (
      SELECT worker_id, count(project_id) as count_of_projects
         FROM project_worker
         GROUP BY worker_id
    )

  SELECT worker.name, project_counts.count_of_projects
  FROM worker JOIN project_counts
  ON worker.id = worker_id
  WHERE count_of_projects = (SELECT max(count_of_projects) FROM project_counts);